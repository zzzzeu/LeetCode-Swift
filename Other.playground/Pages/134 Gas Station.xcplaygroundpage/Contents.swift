class Solution {
    func canCompleteCircuit(_ gas: [Int], _ cost: [Int]) -> Int {
        var rest = 0
        var run = 0
        var res = 0
        for i in gas.indices {
            run += gas[i] - cost[i]
            rest += gas[i] - cost[i]
            if run < 0 {
                res = i + 1
                run = 0
            }
        }
        return rest < 0 ? -1 : res
    }
}
