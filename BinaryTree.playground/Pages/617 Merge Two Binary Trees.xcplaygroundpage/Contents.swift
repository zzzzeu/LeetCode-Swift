class Solution {
    func mergeTrees(_ t1: TreeNode?, _ t2: TreeNode?) -> TreeNode? {
        if let t1 = t1, let t2 = t2 {
            t1.val += t2.val
            t1.left = mergeTrees(t1.left, t2.left)
            t1.right = mergeTrees(t1.right, t2.right)
            return t1
        } else if t1 == nil && t2 != nil {
            return t2
        } else if t1 == nil && t2 == nil {
            return nil
        } else {
            return t1
        }
    }
}
