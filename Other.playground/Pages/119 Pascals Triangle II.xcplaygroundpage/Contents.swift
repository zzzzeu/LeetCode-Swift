class Solution {
    func getRow(_ rowIndex: Int) -> [Int] {
        var result = [Int]()
        var i = 0
        while i <= rowIndex {
            var array = [Int](repeating: 1, count: i + 1)
            if i > 1 {
                for j in 1..<i {
                    array[j] = result[j - 1] + result[j]
                }
            }
            result = array
            i += 1
        }
        return result
    }
}
