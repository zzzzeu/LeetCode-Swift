class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        if nums.count <= 1 || k == 0 {
            return false
        }
        var dict = [Int: Int]()
        for i in nums.indices {
            if let index = dict[nums[i]], i - index <= k {
                return true
            } else {
                dict[nums[i]] = i
            }
        }
        return false
    }
}
