class Solution {
    func subsets(_ nums: [Int]) -> [[Int]] {
        var res = [[Int]]()
        res.append([])
        for i in nums.indices {
            for var list in res {
                list.append(nums[i])
                res.append(list)
            }
        }
        return res
    }
}
