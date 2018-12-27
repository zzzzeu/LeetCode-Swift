class Solution {
    func isHappy(_ n: Int) -> Bool {
        var n = n
        var set = Set<Int>()
        while n != 1 {
            var result = 0
            while n > 0 {
                let val = n %  10
                result += val * val
                n = n / 10
            }
            if result == 1 {
                return true
            }
            if set.contains(result) {
                return false
            }
            set.insert(result)
            n = result
        }
        return true
    }
}
