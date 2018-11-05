class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var left = 0
        var right = height.count - 1
        var result = 0
        while left < right {
            let num = (right - left) * min(height[left], height[right])
            result = max(result, num)
            height[left] < height[right] ? (left += 1) : (right -= 1)
        }
        return result
    }
}

