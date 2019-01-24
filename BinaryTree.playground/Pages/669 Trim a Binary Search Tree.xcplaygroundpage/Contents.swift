class Solution {
    func trimBST(_ root: TreeNode?, _ L: Int, _ R: Int) -> TreeNode? {
        guard let root = root else {
            return nil
        }
        if root.val > R {
            return trimBST(root.left, L, R)
        }
        if root.val < L {
            return trimBST(root.right, L, R)
        }
        root.left = trimBST(root.left, L, R)
        root.right = trimBST(root.right, L, R)
        return root
    }
}

