class Solution {
    func letterCombinations(_ digits: String) -> [String] {
        var dic = ["2": "abc", "3": "def", "4": "ghi", "5": "jkl", "6": "mno", "7": "pqrs", "8": "tuv", "9": "wxyz"]
        var str = [String]()
        if digits.isEmpty {
            return []
        } else {
            for num in digits {
                if let letters = dic[String(num)] {
                    str.append(letters)
                }
            }
        }
        func helper(_ str: [String]) -> [String] {
            if str.isEmpty {
                return [""]
            } else {
                var result = [String]()
                var str = str
                let temp = str.removeFirst()
                for i in temp {
                    for j in helper(str) {
                        result.append(String(i) + j)
                    }
                }
                return result
            }
        }
        return helper(str)
    }
}
