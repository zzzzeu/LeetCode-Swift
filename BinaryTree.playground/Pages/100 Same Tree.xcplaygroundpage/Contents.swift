class Solution {
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if p?.val == q?.val {
            return true
        }
        if (p != nil && q == nil) || (p == nil && q != nil) || (p!.val != q!.val) {
            return false
        }
        return p?.val == q?.val && isSameTree(p?.left, q?.left) && isSameTree(p?.right, q?.right)
    }
}
