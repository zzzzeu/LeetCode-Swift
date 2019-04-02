class Solution {
    func generateMatrix(_ n: Int) -> [[Int]] {
        var res = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)
        var num = 0
        var c = 0
        while num <= n * n {
            for i in c..<(n - c) {
                num += 1
                res[c][i] = num
            }
            if  num == n * n {
                break
            }
            for j in (c + 1)..<(n - c) {
                num += 1
                res[j][n - c - 1] = num
            }
            if  num == n * n {
                break
            }
            for i in (c...(n - c - 2)).reversed() {
                num += 1
                res[n - c - 1][i] = num
            }
            if  num == n * n {
                break
            }
            for j in ((c + 1)...(n - c - 2)).reversed() {
                num += 1
                res[j][c] = num
            }
            c += 1
        }
        return res
    }
}
