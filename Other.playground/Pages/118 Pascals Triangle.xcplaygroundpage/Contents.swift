class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        var result = [[Int]]()
        if numRows == 0 {
            return result
        }
        var i = 0
        while i < numRows {
            var array = [Int](repeating: 1, count: i + 1)
            if i > 1 {
                let last = result[i - 1]
                for j in 1..<i {
                    array[j] = last[j - 1] + last[j]
                }
            }
            result.append(array)
            i += 1
        }
        return result
    }
}
