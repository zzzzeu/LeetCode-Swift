class Solution {
    func selfDividingNumbers(_ left: Int, _ right: Int) -> [Int] {
        var nums: [Int] = []
        loopOne: for i in left...right {
            var shouldAppend = true
            for j in String(i) where shouldAppend {
                if j == "0" {
                    continue loopOne
                }
                if let k = Int(String(j)), i % k != 0 {
                    shouldAppend = false
                }
            }
            if shouldAppend { nums.append(i) }
        }
        return nums
    }
}
