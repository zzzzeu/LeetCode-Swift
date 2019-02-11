class Solution {
    func partition(_ s: String) -> [[String]] {
        var res = [[String]]()
        var str = [String]()
        dfs(&res, &str, Array(s), 0)
        return res
    }
    func isPalindrome(_ s: String) -> Bool {
        let sArray = Array(s)
        var start = 0
        var end = sArray.count - 1
        while start < end {
            let pre = sArray[start]
            let aft = sArray[end]
            if pre != aft {
                return false
            } else {
                start += 1
                end -= 1
            }
        }
        return true
    }
    func dfs(_ res: inout [[String]], _ str: inout [String], _ s: [Character], _ index: Int) {
        if index == s.count {
            res.append(str)
            return
        }
        for i in index..<s.count {
            let temp = String(s[index...i])
            if isPalindrome(temp) {
                str.append(temp)
                dfs(&res, &str, s, i + 1)
                str.removeLast()
            }
        }
    }
}
