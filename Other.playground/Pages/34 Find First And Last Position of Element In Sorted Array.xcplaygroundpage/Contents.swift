class Solution {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        var left = 0
        var right = nums.count - 1
        while left <= right {
            var mid = (left + right) / 2
            if nums[mid] == target {
                var temp = mid
                while temp > 0 && nums[temp - 1] == target {
                    temp -= 1
                }
                while mid < nums.count - 1 && nums[mid + 1] == target {
                    mid += 1
                }
                return [temp, mid]
            } else if nums[mid] < target {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }
        return [-1, -1]
    }
}
