func invertTree(_ root: TreeNode?) -> TreeNode? {
    if root ==  nil {
        return  nil
    }
    root?.left = invertTree(root?.left)
    root?.right = invertTree(root?.right)
    let dummy = root?.left
    root?.left = root?.right
    root?.right = dummy
    return root
}
