class Solution {
    func convert(_ s: String, _ numRows: Int) -> String {
        if numRows == 1 {
            return s
        }
        let chars = [Character](s)
        var res = [Character]()
        let size = 2 * numRows - 2
        for i in 0..<numRows {
            var index = i
            while index < s.count {
                res.append(chars[index])
                if i != 0 && i != numRows - 1 {
                    let temp = index + size - 2 * i
                    if temp < s.count {
                        res.append(chars[temp])
                    }
                }
                index += size
            }
        }
        return String(res)
    }
}
