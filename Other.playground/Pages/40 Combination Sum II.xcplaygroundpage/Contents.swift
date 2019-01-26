class Solution {
    func combinationSum2(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var res = [[Int]]()
        var temp = [Int]()
        var candidates = candidates
        candidates.sort()
        dfs(candidates, &temp, target, 0, &res)
        return res
    }
    func dfs(_ candidates: [Int], _ temp: inout [Int], _ target: Int, _ index: Int, _ res: inout [[Int]]) {
        if target == 0 {
            res.append(temp)
        } else if target > 0 {
            for i in index..<candidates.count {
                if i > index && candidates[i - 1] == candidates[i] {
                    continue
                }
                temp.append(candidates[i])
                dfs(candidates, &temp, target - candidates[i], i + 1, &res)
                temp.removeLast()
            }
        }
        
    }
}
