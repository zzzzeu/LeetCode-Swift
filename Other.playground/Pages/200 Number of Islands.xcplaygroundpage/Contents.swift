class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        if grid.isEmpty || grid[0].isEmpty {
            return 0
        }
        var grid = grid
        var res = 0
        for i in grid.indices {
            for j in grid[0].indices {
                if grid[i][j] == "1" {
                    res += 1
                    dfs(i, j, &grid)
                }
            }
        }
        return res
    }
    func dfs(_ i: Int, _ j: Int,_ grid: inout [[Character]]) {
        grid[i][j] = "2"
        if i > 0 && grid[i - 1][j] == "1" {
            dfs(i - 1, j, &grid)
        }
        if j > 0 && grid[i][ j - 1] == "1" {
            dfs(i, j - 1, &grid)
        }
        if i < grid.count - 1 && grid[i + 1][j] == "1" {
            dfs(i + 1, j, &grid)
        }
        if j < grid[0].count - 1 && grid[i][j + 1] == "1" {
            dfs(i, j + 1, &grid)
        }
    }
}
