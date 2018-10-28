class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 {
            return false
        } else {
            var num = 1
            var x = x
            while x / num >= 10 {
                num = num * 10
            }
            while x != 0 {
                let left = x / num
                let right = x % 10
                if left != right {
                    return false
                }
                x = (x - left * num - right) / 10
                num = num / 100
            }
            return true
        }
    }
}
