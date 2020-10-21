class Solution {
    func countNodes(_ root: TreeNode?) -> Int {
        return root != nil ? 1 + countNodes(root!.left) + countNodes(root!.right) : 0
    }
}
