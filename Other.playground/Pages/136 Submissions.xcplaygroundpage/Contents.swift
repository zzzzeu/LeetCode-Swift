class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var result = 0
        for i in nums.indices {
            result ^= nums[i]
        }
        return result
    }
}
