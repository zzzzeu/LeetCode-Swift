class Solution {
    func countAndSay(_ n: Int) -> String {
        var nextRes = ""
        if n == 1 {
            return "1"
        }
        let res = countAndSay(n - 1)
        var pre = res[res.startIndex], count = 0
        for i in res.indices {
            let now = res[i]
            if pre == now {
                count += 1
            } else {
                nextRes += String(count) + String(pre)
                pre = now
                count = 1
            }
        }
        nextRes += String(count) + String(pre)
        return nextRes
    }
}
