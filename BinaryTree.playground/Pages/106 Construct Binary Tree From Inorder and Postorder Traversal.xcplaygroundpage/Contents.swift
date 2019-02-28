class Solution {
    func buildTree(_ inorder: [Int], _ postorder: [Int]) -> TreeNode? {
        if inorder.count == 0 {
            return nil
        }
        let index = postorder.count - 1
        return helper(inorder, postorder, index, 0, inorder.count - 1)
    }
    
    func helper(_ inorder: [Int], _ postorder: [Int], _ index: Int, _ start: Int, _ end: Int) -> TreeNode? {
        if start == end {
            return TreeNode(inorder[start])
        }
        if start > end {
            return nil
        }
        var n = start
        for i in start...end {
            if inorder[i] == postorder[index] {
                n = i
                break
            }
        }
        let root = TreeNode(inorder[n])
        root.right = helper(inorder, postorder, index - 1, n + 1, end)
        root.left = helper(inorder, postorder, index - (end - n) - 1, start, n - 1)
        return root
    }
}
