class Solution {
    func titleToNumber(_ s: String) -> Int {
        var res = 0
        for i in s {
            let num = Int(i.asciiValue!) - 65 + 1
            res = res * 26 + num
        }
        return res
    }
}
