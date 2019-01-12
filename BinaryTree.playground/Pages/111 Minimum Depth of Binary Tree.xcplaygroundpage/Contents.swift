class Solution {
    func minDepth(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        let leftDepth = minDepth(root?.left)
        let rightDepth = minDepth(root?.right)
        if leftDepth == 0 {
            return rightDepth + 1
        }
        if rightDepth == 0 {
            return leftDepth + 1
        }
        return min(leftDepth, rightDepth) + 1
    }
}
