class Solution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        if head == nil {
            return head
        }
        var node = head
        while node?.next != nil {
            if node?.val == node?.next?.val {
                node?.next = node?.next?.next
            } else {
                node = node?.next
            }
        }
        return head
    }
}
