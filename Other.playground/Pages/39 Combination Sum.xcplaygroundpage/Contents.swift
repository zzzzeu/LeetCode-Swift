class Solution {
    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var res = [[Int]]()
        var temp = [Int]()
        dfs(candidates, &temp, target, 0, &res)
        return res
    }
    
    func dfs(_ candidates: [Int], _ temp: inout [Int], _ target: Int, _ index: Int, _ res: inout [[Int]]) {
        if target == 0 {
            res.append(temp)
        } else if target > 0 {
            for i in index..<candidates.count {
                temp.append(candidates[i])
                dfs(candidates, &temp, target - candidates[i], i, &res)
                temp.removeLast()
            }
        }
    }
}
