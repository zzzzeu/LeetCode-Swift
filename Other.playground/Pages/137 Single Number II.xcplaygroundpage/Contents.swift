class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        if nums.count == 1 {
            return nums[0]
        }
        var nums = nums
        nums.sort()
        for i in nums.indices {
            if nums[0] != nums[1] {
                return nums[0]
            } else if nums[nums.count - 1] != nums[nums.count - 2] {
                return nums[nums.count - 1]
            } else if nums[i] != nums[i + 1] && nums[i] != nums[i - 1] {
                return nums[i]
            }
        }
        return 0
    }
}
