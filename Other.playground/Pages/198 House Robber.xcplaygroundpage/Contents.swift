class Solution {
    func rob(_ nums: [Int]) -> Int {
        var curSum = 0, preSum = 0
        for num in nums {
            let temp = curSum
            curSum = max(curSum, preSum + num)
            preSum = temp
        }
        return curSum
    }
}
