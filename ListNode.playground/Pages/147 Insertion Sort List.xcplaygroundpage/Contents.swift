class Solution {
    func insertionSortList(_ head: ListNode?) -> ListNode? {
        if head == nil {
            return nil
        }
        let dummy = ListNode(0)
        var pre = dummy
        var node = head
        while node != nil {
            let next = node?.next
            while pre.next != nil && pre.next!.val < node!.val {
                pre = pre.next!
            }
            node?.next = pre.next
            pre.next = node
            pre = dummy
            node = next
        }
        return dummy.next
    }
}
