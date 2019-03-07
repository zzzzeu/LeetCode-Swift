class Solution {
    func sortColors(_ nums: inout [Int]) {
        var left = 0, right = nums.count - 1, i = 0
        while i <= right {
            if nums[i] == 0 {
                nums.swapAt(i, left)
                left += 1
                i += 1
            } else if nums[i] == 2 {
                nums.swapAt(i, right)
                right -= 1
            } else {
                i += 1
            }
        }
    }
}
