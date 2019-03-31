class Solution {
    func setZeroes(_ matrix: inout [[Int]]) {
        var rows = [Int]()
        var cols = [Int]()
        for i in matrix.indices {
            for j in matrix[i].indices where matrix[i][j] == 0 {
                rows.append(i)
                cols.append(j)
            }
        }
        for col in cols {
            for i in matrix.indices {
                matrix[i][col] = 0
            }
        }
        for row in rows {
            for j in matrix[row].indices {
                matrix[row][j] = 0
            }
        }
    }
}
