class Solution {
    func combine(_ n: Int, _ k: Int) -> [[Int]] {
        var res = [[Int]](), list = [Int]()
        dfs(&res, &list, n, k, 1)
        return res
    }
    func dfs(_ res: inout [[Int]], _ list: inout [Int], _ n: Int, _ k: Int, _ start: Int) {
        if list.count == k {
            res.append(list)
            return
        }
        for i in start...n {
            list.append(i)
            dfs(&res, &list, n, k, i + 1)
            list.removeLast()
        }
    }
}
