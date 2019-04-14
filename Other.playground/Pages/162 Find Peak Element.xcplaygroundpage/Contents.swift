class Solution {
    func findPeakElement(_ nums: [Int]) -> Int {
        var left = 0
        var right = nums.count - 1
        while left + 1 < right {
            let mid = (left + right) / 2
            if nums[mid - 1] < nums[mid] {
                left = mid
            } else {
                right = mid
            }
        }
        return nums[left] > nums[right] ? left : right
    }
}
