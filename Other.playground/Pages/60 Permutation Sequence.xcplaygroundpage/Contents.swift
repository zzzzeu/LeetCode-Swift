class Solution {
    func getPermutation(_ n: Int, _ k: Int) -> String {
        if n == 1 {
            return "1"
        }
        var result = ""
        var nums = [Int]()
        var array = [Int]()
        var current = 1
        var k = k - 1
        for i in 1...n {
            nums.append(i)
            current *= i
            array.append(current)
        }
        for j in (0...n - 2).reversed() {
            let idex = k / array[j]
            result.append(String(nums[idex]))
            nums.remove(at: idex)
            k %= array[j]
        }
        result.append(String(nums[0]))
        return result
    }
}
