class Solution {
    func lengthOfLIS(_ nums: [Int]) -> Int {
        if nums.count <= 1 {
            return nums.count
        }
        var dp = [Int](repeating: 1, count: nums.count)
        var res = 1
        for i in 1..<nums.count {
            for j in 0..<i {
                if nums[i] > nums[j] {
                    dp[i] = max(dp[i], dp[j] + 1)
                }
            }
            if dp[i] > res {
                res = dp[i]
            }
        }
        return res
    }
}
