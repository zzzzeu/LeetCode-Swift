class Solution {
    func searchBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        guard let root = root else { return nil }
        if root.val == val {
            return root
        } else {
            return root.val > val ? searchBST(root.left, val) : searchBST(root.right, val)
        }
    }
}
