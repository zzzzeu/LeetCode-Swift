class Solution {
    func flatten(_ root: TreeNode?) {
        guard let root = root else {
            return
        }
        flatten(root.left)
        flatten(root.right)
        if root.left != nil {
            let temp = root.right
            root.right = root.left
            root.left = nil
            var node = root.right
            while node?.right != nil {
                node = node?.right
            }
            node?.right = temp
        }
    }
}
