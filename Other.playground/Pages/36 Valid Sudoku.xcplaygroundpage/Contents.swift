class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var rowSet = [Character]()
        var colSet = [Character]()
        var cube = [Character]()
        for i in 0..<9 {
            rowSet = []
            colSet = []
            for j in 0..<9 {
                let rowVal = board[i][j]
                let colVal = board[j][i]
                if rowVal != "." {
                    if rowSet.contains(rowVal) {
                        return false
                    }
                    rowSet.append(rowVal)
                }
                if colVal != "." {
                    if colSet.contains(colVal) {
                        return false
                    }
                    colSet.append(colVal)
                }
            }
        }
        for i in 0..<3 {
            for j in 0..<3 {
                cube = []
                let row = i * 3
                let col = j * 3
                for x in row..<(row + 3) {
                    for y in col..<(col + 3) {
                        let val = board[x][y]
                        if val != "." {
                            if cube.contains(val) {
                                return false
                            }
                            cube.append(val)
                        }
                    }
                }
            }
        }
        return true
    }
}
