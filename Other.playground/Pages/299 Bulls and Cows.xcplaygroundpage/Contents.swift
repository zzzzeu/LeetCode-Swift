class Solution {
    func getHint(_ secret: String, _ guess: String) -> String {
        var a = 0
        var b = 0
        var secArray = Array(secret)
        var gueArray = Array(guess)
        for i in secArray.indices where secArray[i] == gueArray[i] {
            a += 1
            secArray[i] = "a"
            gueArray[i] = "a"
        }
        secArray = secArray.filter{ $0 != "a" }
        gueArray = gueArray.filter{ $0 != "a" }
        for i in gueArray.indices {
            for j in secArray.indices where secArray[j] == gueArray[i] {
                b += 1
                secArray.remove(at: j)
                break
            }
        }
        return "\(a)A\(b)B"
    }
}
