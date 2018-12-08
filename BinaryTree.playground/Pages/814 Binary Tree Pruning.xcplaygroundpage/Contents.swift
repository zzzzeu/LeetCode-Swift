func pruneTree(_ root: TreeNode?) -> TreeNode? {
    if root == nil {
        return nil
    }
    if root?.left != nil {
        root?.left = pruneTree(root?.left)
    }
    if root?.right != nil {
        root?.right = pruneTree(root?.right)
    }
    if root?.left?.left == nil && root?.left?.right == nil && root?.left?.val == 0 {
        root?.left = nil
    }
    if root?.right?.left == nil && root?.right?.right == nil && root?.right?.val == 0 {
        root?.right = nil
    }
    return root
}
