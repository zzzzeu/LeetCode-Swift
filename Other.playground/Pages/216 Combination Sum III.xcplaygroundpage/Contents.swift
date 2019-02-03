class Solution {
    var array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    func combinationSum3(_ k: Int, _ n: Int) -> [[Int]] {
        var res = [[Int]]()
        var temp = [Int]()
        dfs(array, &temp, n, 0, &res, k)
        return res
    }
    func dfs(_ array: [Int], _ temp: inout [Int], _ target: Int, _ index: Int, _ res: inout [[Int]], _ k: Int) {
        if target == 0 && temp.count == k {
            res.append(temp)
        } else if target > 0 {
            for i in index..<array.count {
                if i > index && array[i - 1] == array[i] {
                    continue
                }
                temp.append(array[i])
                dfs(array, &temp, target - array[i], i + 1, &res, k)
                temp.removeLast()
            }
        }
    }
}
