class Solution {
    func uniquePathsWithObstacles(_ obstacleGrid: [[Int]]) -> Int {
        var obstacleGrid = obstacleGrid
        let n = obstacleGrid[0].count, m = obstacleGrid.count
        let temp = Array(repeating: 1, count: n)
        var array = Array(repeating: temp, count: m)
        for i in 0..<m {
            for j in 0..<n {
                if obstacleGrid[i][j] == 0 {
                    if i == 0 && j == 0 {
                        array[i][j] = 1
                    } else if i == 0 {
                        array[i][j] = array[i][j - 1]
                    } else if j == 0 {
                        array[i][j] = array[i - 1][j]
                    } else {
                        array[i][j] = array[i - 1][j] + array[i][j - 1]
                    }
                } else {
                    array[i][j] = 0
                    continue
                }
            }
        }
        return array[m - 1][n - 1]
    }
}
