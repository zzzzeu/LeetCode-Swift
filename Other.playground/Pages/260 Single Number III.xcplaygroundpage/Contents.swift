class Solution {
    func singleNumber(_ nums: [Int]) -> [Int] {
        var result = [Int]()
        let nums = nums.sorted()
        if nums[0] != nums[1] {
            result.append(nums[0])
        }
        if nums[nums.count - 1] != nums[nums.count - 2] {
            result.append(nums[nums.count - 1])
        }
        for i in 1..<nums.count - 1 {
            if nums[i] != nums[i + 1] && nums[i] != nums[i - 1] {
                result.append(nums[i])
            }
        }
        return result
    }
}
