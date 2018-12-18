class Solution {
    func isPalindrome(_ s: String) -> Bool {
        if s.isEmpty {
            return true
        }
        func isCharOrNumber(_ character: Character) -> Bool {
            if character >= "a" && character <= "z" || character >= "0" && character <= "9" {
                return true
            }
            return false
        }
        let s = s.lowercased()
        let sArray = Array(s)
        var start = 0
        var end = sArray.count - 1
        while start < end {
            let pre = sArray[start]
            let aft = sArray[end]
            if !isCharOrNumber(pre) {
                start += 1
            } else if !isCharOrNumber(aft) {
                end -= 1
            } else if pre != aft {
                return false
            } else {
                start += 1
                end -= 1
            }
        }
        return true
    }
}
