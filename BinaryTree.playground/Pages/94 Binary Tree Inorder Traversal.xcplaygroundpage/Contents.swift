func inorderTraversal(_ root: TreeNode?) -> [Int] {
    var tree = [TreeNode]()
    var res = [Int]()
    var node = root
    while !tree.isEmpty || node != nil {
        if node != nil {
            tree.append(node!)
            node = node?.left
        } else {
            node = tree.removeLast()
            res.append(node!.val)
            node = node?.right
        }
    }
    return res
}
