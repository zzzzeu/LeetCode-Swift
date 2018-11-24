class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var result = nums[0]
        var sum = nums[0]
        for i in 1..<nums.count {
            if sum < 0 {
                sum = nums[i]
            } else {
                sum += nums[i]
            }
            if sum > result {
                result = sum
            }
        }
        return result
    }
}
