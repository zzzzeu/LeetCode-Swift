class Solution {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        guard intervals.count > 0 else {
            return []
        }
        var res = [[Int]]()
        var intervals = intervals.sorted(by: {$0[0]<$1[0]})
        for i in 0..<intervals.count {
            if res.count == 0 || intervals[i][0] > res[res.count - 1][1] {
                res.append(intervals[i])
            } else {
                res[res.count - 1] = [res[res.count - 1][0], max(res[res.count - 1][1], intervals[i][1])]
            }
        }
        return res
    }
}
