func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {
    var tree = [TreeNode]()
    var res = [[Int]]()
    guard let root = root else { return res }
    tree.append(root)
    var node = root
    while !tree.isEmpty {
        var level = [Int]()
        var count = tree.count
        while count != 0 {
            node = tree.removeFirst()
            level.append(node.val)
            if let left = node.left {
                tree.append(left)
            }
            if let right = node.right {
                tree.append(right)
            }
            count -= 1
        }
        res.append(level)
    }
    return res.reversed()
}
