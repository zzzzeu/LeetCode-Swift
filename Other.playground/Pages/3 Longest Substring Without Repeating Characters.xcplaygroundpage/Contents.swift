class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var used = [String]()
        var maxLength = 0
        
        for i in s.indices {
            if used.contains(String(s[i])) {
                while used[0] != String(s[i]) {
                    used.removeFirst()
                }
                used.removeFirst()
            }
            used.append(String(s[i]))
            if used.count > maxLength {
                maxLength = used.count
            }
        }
        return maxLength
    }
}
