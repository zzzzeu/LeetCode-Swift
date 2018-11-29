class Solution {
    func climbStairs(_ n: Int) -> Int {
        if n < 3 {
            return n
        }
        var a = 1
        var b = 2
        var result = 0
        for _ in 3...n {
            result = a + b
            a = b
            b = result
        }
        return result
    }
}
