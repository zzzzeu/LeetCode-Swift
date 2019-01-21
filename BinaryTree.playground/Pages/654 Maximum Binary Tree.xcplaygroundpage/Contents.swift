class Solution {
    func constructMaximumBinaryTree(_ nums: [Int]) -> TreeNode? {
        if nums.count == 0 {
            return nil
        }
        if nums.count == 1 {
            return TreeNode(nums[0])
        }
        var max = 0
        for n in 0...(nums.count - 1) {
            if nums[n] > nums[max]  {
                max = n
            }
        }
        var left = [Int]()
        var right = [Int]()
        for i in 0..<max {
            left.append(nums[i])
        }
        if max == (nums.count - 1) {
            right = []
        } else {
            for j in (max + 1)...(nums.count - 1) {
                right.append(nums[j])
            }
        }
        let node = TreeNode(nums[max])
        node.left = constructMaximumBinaryTree(left)
        node.right = constructMaximumBinaryTree(right)
        return node
    }
}
