class Solution {
    func minSubArrayLen(_ s: Int, _ nums: [Int]) -> Int {
        var left = 0
        var res = nums.count + 1
        var sum = 0
        for right in nums.indices {
            sum += nums[right]
            while sum >= s && right >= left {
                res = min(res, right - left + 1)
                sum -= nums[left]
                left += 1
            }
        }
        return res == nums.count + 1 ? 0 : res
    }
}
