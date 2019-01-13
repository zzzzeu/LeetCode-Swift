class Solution {
    func hasPathSum(_ root: TreeNode?, _ sum: Int) -> Bool {
        guard let root = root else { return false }
        let result = sum - root.val
        if root.left == nil && root.right == nil {
            return result == 0
        }
        return hasPathSum(root.left, result) || hasPathSum(root.right, result)
    }
}
