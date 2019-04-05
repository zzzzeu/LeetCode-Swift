class Solution {
    func minDistance(_ word1: String, _ word2: String) -> Int {
        var result = Array(repeating: Array(repeating: 0, count: word2.count + 1), count: word1.count + 1)
        let arr1 = Array(word1)
        let arr2 = Array(word2)
        for i in 0...word1.count {
            for j in 0...word2.count {
                if i == 0 {
                    result[i][j] = j
                } else if j == 0 {
                    result[i][j] = i
                } else if arr1[i - 1] == arr2[j - 1] {
                    result[i][j] = result[i - 1][j - 1]
                } else {
                    result[i][j] = min(result[i - 1][j], result[i - 1][j - 1], result[i][j - 1]) + 1
                }
            }
        }
        return result[arr1.count][arr2.count]
    }
}
