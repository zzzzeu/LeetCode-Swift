class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        if needle.isEmpty {
            return 0
        }
        if needle.count > haystack.count {
            return -1
        }
        for i in 0...haystack.count - needle.count {
            var flag = 1
            for (j, char) in needle.enumerated() {
                if char != haystack[haystack.index(haystack.startIndex, offsetBy: i + j)] {
                    flag  = 0
                    break
                }
            }
            if flag == 1 {
                return i
            }
        }
        return -1
    }
}
