class Solution {
    func averageOfLevels(_ root: TreeNode?) -> [Double] {
        var tree = [TreeNode]()
        var res = [Double]()
        guard let root = root else {
            return res
        }
        tree.append(root)
        var node = root
        while !tree.isEmpty {
            var level = 0.0
            let count = tree.count
            for _ in tree.indices {
                node = tree.removeFirst()
                level += Double(node.val)
                if let left = node.left {
                    tree.append(left)
                }
                if let right = node.right {
                    tree.append(right)
                }
            }
            res.append(level / Double(count))
        }
        return res
    }
}
