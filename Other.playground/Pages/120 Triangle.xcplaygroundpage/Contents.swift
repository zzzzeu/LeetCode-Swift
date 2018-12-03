class Solution {
    func minimumTotal(_ triangle: [[Int]]) -> Int {
        if triangle.count == 0 {
            return 0
        }
        var triangle = triangle
        for i in triangle.indices.reversed() {
            for j in triangle[i].indices {
                triangle[i][j] += min(triangle[i + 1][j], triangle[i + 1][j + 1])
            }
        }
        return triangle[0][0]
    }
}
