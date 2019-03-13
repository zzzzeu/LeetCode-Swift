class Solution {
    func numTrees(_ n: Int) -> Int {
        if n < 2 {
            return 1
        }
        if n == 2 {
            return 2
        }
        var result = 0
        for i in 0..<n {
            result += numTrees(i) * numTrees(n - i - 1)
        }
        return result
    }
}


