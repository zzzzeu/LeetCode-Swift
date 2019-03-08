class Solution {
    func maximumGap(_ nums: [Int]) -> Int {
        if nums.count < 2 {
            return 0
        }
        var nums = nums
        nums.sort()
        var result = 0
        for i in 1..<nums.count  {
            result = max(result, nums[i] - nums[i - 1])
        }
        return result
    }
}
