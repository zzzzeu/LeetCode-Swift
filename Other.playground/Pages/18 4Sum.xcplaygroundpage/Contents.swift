class Solution {
    func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
        if nums.count < 4 {
            return []
        }
        var nums = nums.sorted(by: <)
        var result = [[Int]]()
        for i in 0...nums.count - 3 {
            if i > 0 && nums[i] == nums [i - 1] {
                continue
            }
            for j in i + 1...nums.count - 2 {
                if j > i + 1 && nums[j] == nums[j - 1] {
                    continue
                }
                var left = j + 1
                var right = nums.count - 1
                while left < right {
                    if target == nums[i] + nums[j] + nums[left] + nums[right] {
                        result.append([nums[i], nums[j], nums[left], nums[right]])
                        while left < right && nums[left] == nums[left + 1] {
                            left += 1
                        }
                        while left < right && nums[right] == nums[right - 1] {
                            right -= 1
                        }
                        left += 1
                        right -= 1
                    } else if nums[i] + nums[j] + nums[left] + nums[right] < target {
                        left += 1
                    } else {
                        right -= 1
                    }
                }
            }
        }
        return result
    }
}
