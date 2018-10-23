class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for (indexOfA, a) in nums.enumerated() {
            let b = target - a
            if let indexOfB = nums[(indexOfA + 1)...].index(of: b) {
                return [indexOfA, indexOfB]
            }
        }
        return []
    }
}

