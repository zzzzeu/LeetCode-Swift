class Solution {
    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
        let sortedNums = nums.sorted()
        return sortedNums[nums.count - k]
    }
}
