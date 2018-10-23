class Solution {
    func numJewelsInStones(_ J: String, _ S: String) -> Int {
        var num = 0
        for Stone in S {
            for Jewel in J {
                if Jewel == Stone {
                    num += 1
                }
            }
        }
        return num
    }
}
