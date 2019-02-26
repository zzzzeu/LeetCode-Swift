class Solution {
    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
        var nums = nums
        nums.sort()
        return nums[nums.count - k]
    }
}
