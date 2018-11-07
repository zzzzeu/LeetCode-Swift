class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        if nums.count < 3 {
            return []
        }
        var nums = nums.sorted()
        var result = [[Int]]()
        for i in 0...nums.count - 2 {
            if nums[i] > 0 {
                break
            }
            if i > 0 && nums[i] == nums[i - 1] {
                continue
            }
            let target = -nums[i]
            var left = i + 1
            var right = nums.count - 1
            while left < right {
                if nums[left] + nums[right] == target {
                    result.append([nums[i], nums[left], nums[right]])
                    while left < right && nums[left] == nums[left + 1] {
                        left += 1
                    }
                    while left < right && nums[right] == nums[right - 1] {
                        right -= 1
                    }
                    left += 1
                    right -= 1
                }
                if nums[left] + nums[right] > target {
                    right -= 1
                } else {
                    left += 1
                }
            }
        }
        return result
    }
}
