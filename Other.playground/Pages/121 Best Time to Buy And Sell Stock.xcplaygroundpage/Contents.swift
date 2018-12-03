class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        if prices.count == 0 {
            return 0
        }
        var result = 0
        var Min = prices[0]
        for i in 1..<prices.count {
            result = max(result, prices[i] - Min)
            Min = min(Min, prices[i])
        }
        return result
    }
}
