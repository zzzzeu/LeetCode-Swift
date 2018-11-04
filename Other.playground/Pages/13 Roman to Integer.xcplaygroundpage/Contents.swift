class Solution {
    func romanToInt(_ s: String) -> Int {
        var result = 0
        let dic: [Character: Int] = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
        for (i, value) in s.enumerated() {
            if i == s.count - 1 || dic[value]! >= dic[s[s.index(s.startIndex, offsetBy: i + 1)]]! {
                result += dic[value]!
            } else {
                result -= dic[value]!
            }
        }
        return result
    }
}
