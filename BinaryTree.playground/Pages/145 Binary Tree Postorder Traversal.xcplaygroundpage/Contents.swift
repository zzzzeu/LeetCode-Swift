class Solution {
    var res = [Int]()
    func postorderTraversal(_ root: TreeNode?) -> [Int] {
        guard root != nil else { return [] }
        postorderTraversal(root?.left)
        postorderTraversal(root?.right)
        res.append(root!.val)
        return res
    }
}
