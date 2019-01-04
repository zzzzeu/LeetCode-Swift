class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }
        let s = s.sorted(), t = t.sorted()
        return s == t
    }
}
