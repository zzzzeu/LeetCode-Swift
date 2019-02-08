class Solution {
    func subsetsWithDup(_ nums: [Int]) -> [[Int]] {
        var res = [[Int]]()
        res.append([])
        var nums = nums
        nums.sort()
        for i in nums.indices {
            for var list in res {
                list.append(nums[i])
                if !res.contains(list) {
                    res.append(list)
                }
            }
        }
        return res
    }
}
