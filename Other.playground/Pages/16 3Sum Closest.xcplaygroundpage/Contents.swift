class Solution {
    func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
        let nums = nums.sorted(by: <)
        var difference = Int.max
        var result = 0
        for i in 0...nums.count - 2 {
            if i == 0 || nums[i] != nums[i - 1] {
                var left = i + 1
                var right = nums.count - 1
                
                while left < right {
                    let sum = nums[i] + nums[left] + nums[right]
                    let temp = abs(target - sum)
                    if temp == 0 {
                        return sum
                    }
                    if difference > temp {
                        result = sum
                        difference = temp
                    }
                    if sum < target {
                        left += 1
                    }
                    if sum > target {
                        right -= 1
                    }
                }
            }
        }
        return result
    }
}
