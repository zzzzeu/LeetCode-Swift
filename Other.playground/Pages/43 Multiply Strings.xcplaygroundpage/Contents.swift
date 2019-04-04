class Solution {
    func multiply(_ num1: String, _ num2: String) -> String {
        let arr1 = num1.map({ Int(String($0))! })
        let arr2 = num2.map({ Int(String($0))! })
        var num = [Int](repeating: 0, count: arr1.count + arr2.count)
        var result = ""
        for i in arr1.indices.reversed() {
            for j in arr2.indices.reversed() {
                let x = arr1[i] * arr2[j]
                let position1 = i + j
                let position2 = i + j + 1
                let sum = x + num[position2]
                num[position1] += sum / 10
                num[position2] = sum % 10
            }
        }
        for i in num {
            if result.count == 0 && i == 0 {
                continue
            }
            result += "\(i)"
        }
        return result.count == 0 ? "0" : result
    }
}
