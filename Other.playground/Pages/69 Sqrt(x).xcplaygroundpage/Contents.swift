class Solution {
    func mySqrt(_ x: Int) -> Int {
        if x <= 1 {
            return x
        }
        var left = 0, right = x
        while left < right {
            let mid = left + (right - left) / 2
            if x / mid >= mid {
                left = mid + 1
            } else {
                right = mid
            }
        }
        return right - 1
    }
}
