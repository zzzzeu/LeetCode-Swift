class Solution {
    func nthUglyNumber(_ n: Int) -> Int {
        var res = [Int]()
        res.append(1)
        var a = 0, b = 0, c = 0
        for _ in 1..<n {
            let list = [res[a] * 2, res[b] * 3, res[c] * 5]
            let min = list.min()!
            res.append(min)
            if list[0] == min {
                a += 1
            }
            if list[1] == min {
                b += 1
            }
            if list[2] == min {
                c += 1
            }
        }
        return res.last!
    }
}
