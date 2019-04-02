class Solution {
    func solveSudoku(_ board: inout [[Character]]) {
        helper(&board)
    }
    func helper(_ board: inout [[Character]]) -> Bool {
        for i in board.indices {
            for j in board[0].indices where board[i][j] == "." {
                for num in 1...9 where isValid(board, i, j, Character(String(num))) {
                    board[i][j] = Character(String(num))
                    if helper(&board) {
                        return true
                    } else {
                        board[i][j] = "."
                    }
                }
                return false
            }
        }
        return true
    }
    func isValid(_ board: [[Character]], _ i: Int, _ j: Int, _ num: Character) -> Bool {
        for x in board.indices {
            if board[i][x] == num {
                return false
            }
        }
        for y in board[0].indices {
            if board[y][j] == num {
                return false
            }
        }
        for x in i / 3 * 3..<i / 3 * 3 + 3 {
            for y in j / 3 * 3..<j / 3 * 3 + 3 {
                if board[x][y] == num {
                    return false
                }
            }
        }
        return true
    }
}
