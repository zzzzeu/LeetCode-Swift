class Solution {
    func addDigits(_ num: Int) -> Int {
        if num < 10 {
            return num
        }
        var num = num
        var sum = 0
        while num != 0 {
            sum += num % 10
            num /= 10
        }
        return addDigits(sum)
    }
}
