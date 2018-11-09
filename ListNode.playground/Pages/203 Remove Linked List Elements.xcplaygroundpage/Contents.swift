class Solution {
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        var head = head
        while head?.val == val {
            head = head?.next
        }
        var node = head
        while node?.next != nil {
            if node?.next?.val == val {
                node?.next = node?.next?.next
            } else {
                node = node?.next
            }
        }
        return head
    }
}
