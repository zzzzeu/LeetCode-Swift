class Solution {
    func countPrimes(_ n: Int) -> Int {
        if n < 3 {
            return 0
        }
        var count = 1
        for i in 3..<n where i % 2 != 0 && isPrime(i) {
            count += 1
        }
        return count
    }
    func isPrime(_ n: Int) -> Bool {
        if n == 3 {
            return true
        }
        for i in 2...sqrt(n) where n % i == 0 {
            return false
        }
        return true
    }
    func sqrt(_ x: Int) -> Int {
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
