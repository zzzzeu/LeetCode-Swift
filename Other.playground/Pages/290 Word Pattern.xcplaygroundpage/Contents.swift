class Solution {
    func wordPattern(_ pattern: String, _ str: String) -> Bool {
        let array = str.split(separator: " ")
        if array.count != pattern.count {
            return false
        }
        var map = [Character: String]()
        for (i, value) in pattern.enumerated() {
            if let temp = map[value], temp != array[i] {
                return false
            } else {
                if map.values.contains(String(array[i])) {
                    return false
                } else {
                    map[value] = String(array[i])
                }
            }
        }
        return true
    }
}
