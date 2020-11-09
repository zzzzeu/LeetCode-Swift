class Solution {
    func firstUniqChar(_ s: String) -> Int {
        let array = Array(s)
        var dict = [Character: Int]()
        for char in array {
            if let count = dict[char] {
                dict[char] = count + 1
            } else {
                dict[char] = 1
            }
        }
        for index in 0..<array.count {
            if dict[array[index]] == 1 {
                return index
            }
        }
        return -1
    }
}
