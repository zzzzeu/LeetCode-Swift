class Solution {
    func generateTrees(_ n: Int) -> [TreeNode?] {
        if n == 0 {
            return []
        }
        return buildTree(1, n)
    }
    func buildTree(_ start: Int, _ end: Int) -> [TreeNode?] {
        var result = [TreeNode?]()
        if start > end {
            result.append(nil)
            return result
        }
        if start == end {
            let node = TreeNode(start)
            result.append(node)
            return result
        }
        for i in start...end {
            let left = buildTree(start, i - 1)
            let right = buildTree(i + 1, end)
            for leftNode in left {
                for rightNode in right {
                    let node = TreeNode(i)
                    node.left = leftNode
                    node.right = rightNode
                    result.append(node)
                }
            }
        }
        return result
    }
}
