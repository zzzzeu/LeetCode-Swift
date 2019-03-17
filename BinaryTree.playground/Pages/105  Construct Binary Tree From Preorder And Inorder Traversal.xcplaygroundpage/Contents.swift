class Solution {
    func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        var preorderL = [Int]()
        var preorderR = [Int]()
        var inorderL = [Int]()
        var inorderR = [Int]()
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
            inorderL.append(inorder[i])
            preorderL.append(preorder[(i + 1)])
        }
        for j in index + 1..<inorder.count {
            inorderR.append(inorder[j])
            preorderR.append(preorder[j])
        }
        root.left = buildTree(preorderL, inorderL)
        root.right = buildTree(preorderR, inorderR)
        return root
    }
}
