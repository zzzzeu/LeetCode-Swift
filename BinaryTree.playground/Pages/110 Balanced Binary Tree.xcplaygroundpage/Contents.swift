class Solution {
    func isBalanced(_ root: TreeNode?) -> Bool {
        return depth(root) != -1
    }
    func depth(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        let left = depth(root?.left)
        if left == -1 {
            return -1
        }
        let right = depth(root?.right)
        if right == -1 {
            return -1
        }
        if abs(left - right) > 1 {
            return -1
        }
        return max(left, right) + 1
    }
}
