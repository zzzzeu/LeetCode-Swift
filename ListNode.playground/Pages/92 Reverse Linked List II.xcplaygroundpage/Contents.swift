class Solution {
    func reverseBetween(_ head: ListNode?, _ m: Int, _ n: Int) -> ListNode? {
        guard head != nil else { return nil }
        var count = 1
        var current = head
        var start: ListNode?
        var left: ListNode?
        var right: ListNode? = head
        while let nonNilCurrent = current {
            if count < m {
                left = nonNilCurrent
                current = nonNilCurrent.next
                right = current
            } else if count <= n {
                let temp = nonNilCurrent.next
                nonNilCurrent.next = start
                start = current
                current = temp
            } else {
                break
            }
            count += 1
        }
        left?.next = start
        right?.next = current
        return m == 1 ? start : head
    }
}
