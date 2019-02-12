class Solution {
    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        if m == 1 || n == 1 {
            return 1
        }
        var array = Array(repeating: 1, count: n)
        for _ in 1...m - 1 {
            for j in 1...n - 1 {
                array[j] += array[j - 1]
            }
        }
        return array[n - 1]
    }
}
