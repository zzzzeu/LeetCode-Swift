class Solution {
    func insert(_ intervals: [[Int]], _ newInterval: [Int]) -> [[Int]] {
        var arr = intervals
        arr.append(newInterval)
        var res = [[Int]]()
        arr = arr.sorted(by: {$0[0]<$1[0]})
        for i in 0..<arr.count {
            if res.count == 0 || arr[i][0] > res[res.count - 1][1] {
                res.append(arr[i])
            } else {
                res[res.count - 1] = [res[res.count - 1][0], max(res[res.count - 1][1], arr[i][1])]
            }
        }
        return res
    }
}
