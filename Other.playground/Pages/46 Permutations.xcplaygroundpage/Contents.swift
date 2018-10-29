class Solution {
    func permute(_ nums: [Int]) -> [[Int]] {
        if nums.isEmpty {
            return[[]]
        } else if nums.count == 1 {
            return [nums]
        } else {
            var result = [[Int]]()
            for i in 0..<nums.count {
                var nums = nums
                let num = nums.remove(at: i)
                for j in permute(nums) {
                    result.append([num] + j)
                }
            }
            return result
        }
    }
}
