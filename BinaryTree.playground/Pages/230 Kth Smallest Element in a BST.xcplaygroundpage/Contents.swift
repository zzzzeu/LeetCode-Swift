class Solution {
    func kthSmallest(_ root: TreeNode?, _ k: Int) -> Int {
        func TreeSize(_ root: TreeNode?) -> Int {
            guard let root = root else { return 0 }
            return 1 + TreeSize(root.left) + TreeSize(root.right)
        }
        guard let root = root else { return 0 }
        let leftSize = TreeSize(root.left)
        if leftSize + 1 == k {
            return root.val
        } else if leftSize >= k {
            return kthSmallest(root.left, k)
        } else if leftSize + 1 < k {
            return kthSmallest(root.right, k - leftSize - 1)
        }
        return 0
    }
}
