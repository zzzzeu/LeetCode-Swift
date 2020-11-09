class Solution {
    func maxProduct(_ nums: [Int]) -> Int {
        var res = nums[0]
        var _max = 1
        var _min = 1
        for i in 0..<nums.count {
            if nums[i] < 0 { (_min, _max) = (_max, _min) }
            _max = max(nums[i], _max * nums[i])
            _min = min(nums[i], _min * nums[i])
            res = max(res, _max)
        }
        return res
    }
}
