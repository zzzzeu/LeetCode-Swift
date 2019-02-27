class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        if nums.count <= 1 {
            return []
        }
        var res = Array(repeating: 1, count: nums.count)
        var left = 1, right = 1
        for i in 1..<nums.count {
            left *= nums[i - 1]
            right *= nums[nums.count - i]
            res[i] *= left
            res[nums.count - i - 1] *= right
        }
        return res
    }
}
