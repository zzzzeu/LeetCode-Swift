class Solution {
    func subsetsWithDup(_ nums: [Int]) -> [[Int]] {
        var res = [[Int]]([])
        let sortedNums = nums.sorted()
        for i in sortedNums.indices {
            for var list in res {
                list.append(sortedNums[i])
                if !res.contains(list) {
                    res.append(list)
                }
            }
        }
        return res
    }
}
