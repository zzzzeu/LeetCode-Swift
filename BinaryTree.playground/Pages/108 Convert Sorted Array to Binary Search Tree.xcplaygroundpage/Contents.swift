class Solution {
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        return nums.isEmpty ? nil : toBST(nums, 0, nums.count - 1)
    }
    
    func toBST(_ nums: [Int], _ start: Int,_ end: Int) -> TreeNode? {
        guard start <= end else { return nil }
        let mid = (start + end) / 2
        let root = TreeNode(nums[mid])
        root.left = toBST(nums, start, (mid - 1))
        root.right = toBST(nums, (mid + 1), end)
        return root
    }
}
