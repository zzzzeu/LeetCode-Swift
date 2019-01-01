class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var j = 0
        for i in nums.indices {
            if nums[i] != 0 {
                nums[j] = nums[i]
                j += 1
            }
        }
        while j < nums.count {
            nums[j] = 0
            j += 1
        }
    }
}
