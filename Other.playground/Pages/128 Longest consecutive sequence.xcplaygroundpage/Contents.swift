class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        var res = 0
        var numSet = Set(nums)
        for num in numSet {
            if !numSet.contains(num-1) {
                var cur = num + 1
                while numSet.contains(cur) {
                    cur += 1
                }
                res = max(res, cur - num)
            }
        }
        return res
    }
}
