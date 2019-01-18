class Solution {
    func pathSum(_ root: TreeNode?, _ sum: Int) -> [[Int]] {
        var result = [[Int]]()
        var array = [Int]()
        helper(root, sum, &array, &result)
        return result
    }
    func helper(_ root: TreeNode?, _ sum: Int, _ array: inout [Int], _ result: inout [[Int]]) {
        guard let root = root else { return }
        array.append(root.val)
        if sum == root.val && root.left == nil && root.right == nil {
            result.append(array)
        }
        if root.left != nil {
            helper(root.left, sum - root.val, &array, &result)
            array.removeLast()
        }
        if root.right != nil {
            helper(root.right, sum - root.val, &array, &result)
            array.removeLast()
        }
    }
}
