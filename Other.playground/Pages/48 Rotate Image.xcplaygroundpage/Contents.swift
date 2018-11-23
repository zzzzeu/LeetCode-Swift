class Solution {
    func rotate(_ matrix: inout [[Int]]) {
        let n = matrix.count
        for i in matrix.indices {
            for j in 0..<(n - i) {
                let temp1 = matrix[i][j]
                matrix[i][j] = matrix[n - 1 - j][n - 1 - i]
                matrix[n - 1 - j][n - 1 - i] = temp1
            }
        }
        for i in 0..<(n / 2) {
            for j in 0..<n {
                let temp2 = matrix[i][j]
                matrix[i][j] = matrix[n - 1 - i][j]
                matrix[n - 1 - i][j] = temp2
            }
        }
    }
}

