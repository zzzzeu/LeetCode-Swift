class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        if matrix.isEmpty || matrix[0].isEmpty {
            return false
        }
        var m = matrix.count - 1
        var n = 0
        while m >= 0 && n < matrix[0].count {
            if matrix[m][n] == target {
                return true
            } else if matrix[m][n] < target {
                n += 1
            } else {
                m -= 1
            }
        }
        return false
    }
}
