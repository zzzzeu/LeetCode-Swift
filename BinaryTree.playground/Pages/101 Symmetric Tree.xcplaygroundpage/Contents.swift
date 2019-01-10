class Solution {
    func isSymmetric(_ root: TreeNode?) -> Bool {
        return isMirror(root, root)
    }
    func isMirror(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if p == nil {
            return q == nil
        } else if q == nil {
            return p == nil
        } else if p!.val == q!.val {
            return isMirror(p?.left, q?.right) && isMirror(p?.right, q?.left)
        } else {
            return false
        }
    }
}

