class Solution {
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        if p!.val < root!.val && root!.val > q!.val {
            return lowestCommonAncestor(root?.left, p, q)
        }
        if p!.val > root!.val && root!.val < q!.val {
            return lowestCommonAncestor(root?.right, p, q)
        }
        return root
    }
}
