class Solution {
    var sum = 0
    func convertBST(_ root: TreeNode?) -> TreeNode? {
        guard let root = root else { return nil }
        convertBST(root.right)
        root.val = root.val + sum
        sum = root.val
        convertBST(root.left)
        return root
    }
}
