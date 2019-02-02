class Solution {
    func binaryTreePaths(_ root: TreeNode?) -> [String] {
        var res = [String]()
        guard let root = root else {
            return res
        }
        helper(root, String(root.val), &res)
        return res
    }
    
    func helper(_ root: TreeNode, _ path: String, _ res: inout [String]) {
        if root.left == nil && root.right == nil {
            res.append(path)
            return
        }
        if let left = root.left {
            helper(left, path + "->" + String(left.val), &res)
        }
        if let right = root.right {
            helper(right, path + "->" + String(right.val), &res)
        }
    }
}
