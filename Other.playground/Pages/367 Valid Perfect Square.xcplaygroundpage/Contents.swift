class Solution {
    func isPerfectSquare(_ num: Int) -> Bool {
        var left = 0
        var right = num
        while left <= right {
            let mid = (left + right) / 2
            let temp = mid * mid
            if temp == num {
                return true
            } else if temp > num {
                right = mid - 1
            } else {
                left = mid + 1
            }
        }
        return false
    }
}
