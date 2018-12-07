class Solution {
    func maxDepth(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        let leftDepth = maxDepth(root?.left)
        let rightDepth = maxDepth(root?.right)
        return max(leftDepth, rightDepth) + 1
    }
}
