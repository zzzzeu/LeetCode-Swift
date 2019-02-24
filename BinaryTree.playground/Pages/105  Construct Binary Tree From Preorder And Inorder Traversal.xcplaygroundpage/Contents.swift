class Solution {
    func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        var preorder_l = [Int]()
        var preorder_r = [Int]()
        var inorder_l = [Int]()
        var inorder_r = [Int]()
        var index = 0
        if preorder.count == 0 || inorder.count == 0 {
            return nil
        }
        let root = TreeNode(preorder[0])
        for i in 0..<inorder.count {
            if root.val == inorder[i] {
                index = i
                break
            }
            inorder_l.append(inorder[i])
            preorder_l.append(preorder[(i + 1)])
        }
        for j in index + 1..<inorder.count {
            inorder_r.append(inorder[j])
            preorder_r.append(preorder[j])
        }
        root.left = buildTree(preorder_l, inorder_l)
        root.right = buildTree(preorder_r, inorder_r)
        return root
    }
}
