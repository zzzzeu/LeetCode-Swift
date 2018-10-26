class Solution {
    func reverse(_ x: Int) -> Int {
        var nums = abs(x)
        var num = 1
        while nums / num >= 10 {
            num = num * 10
        }
        var result = 0
        while nums != 0 {
            let end = nums % 10
            nums = (nums - end) / 10
            result = result + end * num
            num = num / 10
        }
        if x < 0 {
            result = result * -1
        }
        if result > Int32.max || result < Int32.min {
            return 0
        }
        return result
    }
}
