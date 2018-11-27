class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        var result = "", sum = 0, carry = 0
        let CharsA = [Character](a), CharsB = [Character](b)
        var i = CharsA.count - 1, j = CharsB.count - 1
        while i >= 0 || j >= 0 {
            sum = carry
            if i >= 0 {
                sum += Int(String(CharsA[i]))!
                i -= 1
            }
            if j >= 0 {
                sum += Int(String(CharsB[j]))!
                j -= 1
            }
            carry = sum / 2
            sum = sum % 2
            result = String(sum) + result
        }
        return carry == 1 ? "1" + result : result
    }
}
