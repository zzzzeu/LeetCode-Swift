class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.isEmpty {
            return 0
        }
        var index = 0
        for num in nums where num != nums[index] {
            index += 1
            nums[index] = num
        }
        return index + 1
    }
}
