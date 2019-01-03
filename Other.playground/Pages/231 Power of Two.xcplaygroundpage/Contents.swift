class Solution {
    func isPowerOfTwo(_ n: Int) -> Bool {
        if n < 1 {
            return false
        }
        var n = n
        while n != 1 {
            if n % 2 == 1 {
                return false
            }
            n =  n / 2
        }
        return true
    }
}
