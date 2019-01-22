class Solution {
    func findBottomLeftValue(_ root: TreeNode?) -> Int {
        guard var node = root else { return 0 }
        var tree = [TreeNode]()
        tree.append(node)
        while !tree.isEmpty {
            node = tree.removeFirst()
            if node.right != nil {
                tree.append(node.right!)
            }
            if node.left != nil {
                tree.append(node.left!)
            }
        }
        return node.val
    }
}
