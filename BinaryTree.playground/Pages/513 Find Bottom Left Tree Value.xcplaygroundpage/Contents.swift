class Solution {
    func findBottomLeftValue(_ root: TreeNode?) -> Int {
        guard var node = root else { return 0 }
        var tree = [TreeNode]()
        tree.append(node)
        while !tree.isEmpty {
            node = tree.removeFirst()
            if let right = node.right {
                tree.append(right)
            }
            if let left = node.left {
                tree.append(left)
            }
        }
        return node.val
    }
}
