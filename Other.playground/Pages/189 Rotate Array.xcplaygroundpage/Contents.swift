class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        let turns = k % nums.count
        if nums.isEmpty, turns == 0 {
            return
        }
        let num = nums.count - turns
        reverse(&nums, 0, num - 1)
        reverse(&nums, num, nums.count - 1)
        reverse(&nums, 0, nums.count - 1)
    }
    func reverse(_ nums: inout [Int], _ begin: Int, _ end: Int) {
        var begin = begin, end = end
        while begin < end {
            (nums[begin], nums[end]) = (nums[end], nums[begin])
            begin += 1
            end -= 1
        }
    }
}
