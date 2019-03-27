class Solution {
    func reverseBetween(_ head: ListNode?, _ m: Int, _ n: Int) -> ListNode? {
        if head == nil {
            return nil
        }
        var count = 1
        var current = head
        var start: ListNode? = nil
        var left: ListNode? = nil
        var right: ListNode? = head
        while current != nil {
            if count < m {
                left = current
                current = current?.next
                right = current
            } else if count <= n {
                let temp = current?.next
                current?.next = start
                start = current
                current = temp
            } else {
                break
            }
            count += 1
        }
        left?.next = start
        right?.next = current
        if m == 1 {
            return start
        } else {
            return head
        }
    }
}
