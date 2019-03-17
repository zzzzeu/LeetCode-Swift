class Solution {
    func sortColors(_ nums: inout [Int]) {
        var left = 0, right = nums.count - 1, i = 0
        while i <= right {
            switch nums[i] {
            case 0:
                nums.swapAt(i, left)
                left += 1
                i += 1
            case 2:
                nums.swapAt(i, right)
                right -= 1
            default:
                i += 1
            }
        }
    }
}
