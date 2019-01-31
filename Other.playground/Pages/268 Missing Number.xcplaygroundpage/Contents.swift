class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        let sum = nums.count * (1 + nums.count) / 2
        return nums.reduce(0, +) - sum
    }
}

