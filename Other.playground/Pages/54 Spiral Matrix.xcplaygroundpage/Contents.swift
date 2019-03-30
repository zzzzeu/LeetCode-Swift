class Solution {
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        if matrix.isEmpty {
            return []
        }
        var x = 0
        var y = 0
        var row = matrix.count - 1
        var col = matrix[0].count - 1
        var result = [Int]()
        while x <= col && y <= row {
            if x <= col {
                for i in x...col {
                    result.append(matrix[y][i])
                }
            }
            if y < row {
                for j in (y + 1)...row {
                    result.append(matrix[j][col])
                }
            }
            if x < col && y != row {
                for i in (x..<col).reversed() {
                    result.append(matrix[row][i])
                }
            }
            if y < row - 1 && x != col {
                for j in ((y + 1)..<row).reversed() {
                    result.append(matrix[j][x])
                }
            }
            x += 1
            y += 1
            row -= 1
            col -= 1
        }
        return result
    }
}
