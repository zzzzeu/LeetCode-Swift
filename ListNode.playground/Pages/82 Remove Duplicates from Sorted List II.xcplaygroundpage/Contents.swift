class Solution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        if head == nil {
            return head
        }
        let dummy = ListNode(0)
        dummy.next = head
        var pre: ListNode? = dummy
        while pre?.next != nil {
            var same = false
            var node = pre?.next
            while node?.next != nil && node!.val == node?.next!.val {
                node = node?.next
                same = true
            }
            if same {
                pre?.next = node?.next
            } else {
                pre = pre?.next
            }
        }
        return dummy.next
    }
}
