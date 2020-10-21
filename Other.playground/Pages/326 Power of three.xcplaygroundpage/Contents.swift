class Solution {
    func isPowerOfThree(_ n: Int) -> Bool {
        if n == 1 {
            return true
        }
        if n < 3 {
            return false
        }
        if n % 3 == 0 {
            return isPowerOfThree(n / 3)
        } else {
            return false
        }
    }
}
