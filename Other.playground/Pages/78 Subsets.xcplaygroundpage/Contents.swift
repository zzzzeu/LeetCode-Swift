class Solution {
    func subsets(_ nums: [Int]) -> [[Int]] {
        var res = [[Int]]()
        res.append([])
        for i in nums.indices {
            let size = res.count - 1
            for j in 0...size {
                var list = res[j]
                list.append(nums[i])
                res.append(list)
                list.removeLast()
            }
        }
        return res
    }
}
