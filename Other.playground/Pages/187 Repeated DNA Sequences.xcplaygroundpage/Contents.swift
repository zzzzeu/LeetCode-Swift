class Solution {
    func findRepeatedDnaSequences(_ s: String) -> [String] {
        if s.count < 10 {
            return []
        }
        let arr = Array(s)
        var res = Set<String>()
        var twice = Set<String>()
        for i in 0...arr.count - 10 {
            let temp = String(arr[i..<(i + 10)])
            if twice.contains(temp) {
                res.insert(temp)
            } else {
                twice.insert(temp)
            }
        }
        return Array(res)
    }
}
