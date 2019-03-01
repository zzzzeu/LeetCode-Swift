class Solution {
    var result = 0
    var sum = 0
    func sumNumbers(_ root: TreeNode?) -> Int {
        getSum(root, sum)
        return result
    }
    func getSum(_ root: TreeNode?,_ sum: Int) {
        guard let root = root else {
            return
        }
        if root.left == nil && root.right == nil {
            result += sum * 10 + root.val
        }
        var sum = sum * 10 + root.val
        getSum(root.left, sum)
        getSum(root.right, sum)
    }
}
