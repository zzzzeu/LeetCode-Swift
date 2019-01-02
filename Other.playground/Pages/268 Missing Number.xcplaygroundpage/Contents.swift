class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        let sum = nums.count * (1 + nums.count) / 2
        var result = 0
        for i in nums.indices {
            result += nums[i]
        }
        return sum - result
    }
}

