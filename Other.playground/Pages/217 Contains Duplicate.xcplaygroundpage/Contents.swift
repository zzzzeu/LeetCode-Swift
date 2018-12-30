class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        if nums.count == 1 || nums.isEmpty {
            return false
        }
        var nums = nums.sorted()
        for i in 0..<nums.count - 1 {
            if nums[i] == nums[i + 1] {
                return true
            }
        }
        return false
    }
}
