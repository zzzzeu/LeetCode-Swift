class Solution {
    func minPathSum(_ grid: [[Int]]) -> Int {
        var grid = grid
        let n = grid[0].count
        for i in grid.indices {
            for j in grid[0].indices {
                if i == 0 && j != 0 {
                    grid[i][j] += grid[i][j - 1]
                } else if i != 0 && j == 0 {
                    grid[i][j] += grid[i - 1][j]
                } else if i != 0 && j != 0 {
                    grid[i][j] += min(grid[i - 1][j], grid[i][j - 1])
                }
            }
        }
        return grid[grid.count - 1][n - 1]
    }
}
