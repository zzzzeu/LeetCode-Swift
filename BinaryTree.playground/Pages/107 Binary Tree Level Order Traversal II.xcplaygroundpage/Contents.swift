func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {
    var tree = [TreeNode]()
    var res = [[Int]]()
    if root == nil {
        return res
    }
    tree.append(root!)
    var node = root
    while !tree.isEmpty {
        var level = [Int]()
        var count = tree.count
        while count != 0 {
            node = tree.removeFirst()
            level.append(node!.val)
            if node?.left != nil {
                tree.append(node!.left!)
            }
            if node?.right != nil {
                tree.append(node!.right!)
            }
            count -= 1
        }
        res.append(level)
    }
    return res.reversed()
}
