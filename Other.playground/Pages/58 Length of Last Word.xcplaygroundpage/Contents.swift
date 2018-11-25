class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        var result = 0
        for (i, char) in s.enumerated() {
            if char == " " {
                if i == s.count - 1 || s[s.index(s.startIndex, offsetBy: i + 1)] == " " {
                    continue
                } else {
                    result = 0
                    continue
                }
            }
            result += 1
        }
        return result
    }
}
