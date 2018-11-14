class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var m = m
        for i in nums2 {
            nums1[m] = i
            m += 1
        }
        for j in nums1.indices {
            for k in (j + 1)..<nums1.count {
                if nums1[j] > nums1[k] {
                    let temp = nums1[k]
                    nums1[k] = nums1[j]
                    nums1[j] = temp
                }
            }
        }
    }
}
