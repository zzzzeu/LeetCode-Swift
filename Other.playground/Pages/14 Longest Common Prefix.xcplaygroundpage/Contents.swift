class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.isEmpty {
            return ""
        }
        if strs.count == 1 {
            return strs[0]
        }
        var result = ""
        for i in strs[0].indices {
            for j in 1..<strs.count {
                if strs[j].endIndex == i || strs[j][i] != strs[0][i] {
                    return result
                }
            }
            result.append(String(strs[0][i]))
        }
        return result
    }
}
