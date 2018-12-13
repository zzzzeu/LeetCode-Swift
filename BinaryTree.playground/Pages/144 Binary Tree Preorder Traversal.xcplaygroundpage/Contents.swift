class Solution {
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        var result = [Int]()
        var temp = [TreeNode]()
        var node = root
        while !temp.isEmpty || node != nil {
            if let nodeValue = node {
                result.append(nodeValue.val)
                temp.append(nodeValue)
                node = nodeValue.left
            } else {
                node = temp.removeLast().right
            }
        }
        return result
    }
}
