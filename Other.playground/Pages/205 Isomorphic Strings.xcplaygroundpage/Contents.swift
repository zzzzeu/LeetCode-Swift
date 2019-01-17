class Solution {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        if s.count != t.count || Set(s).count != Set(t).count {
            return false
        }
        var dict = [String: String]()
        for (i, value) in s.enumerated() {
            if dict.keys.contains(String(value)) {
                if dict[String(value)] != String(t[t.index(s.startIndex, offsetBy: i)]) {
                    return false
                }
            } else {
                dict[String(value)] = String(t[t.index(s.startIndex, offsetBy: i)])
            }
        }
        return true
    }
}
