class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var map: [String: [String]] = [:]
        var result = [[String]]()
        for str in strs {
            let temp = String(str.sorted())
            if var strs = map[temp] {
                strs.append(str)
                map[temp] = strs
            } else {
                map[temp] = [str]
            }
        }
        result.append(contentsOf: map.values)
        return result
    }
}
