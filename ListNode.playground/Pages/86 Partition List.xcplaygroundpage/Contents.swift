class Solution {
    func partition(_ head: ListNode?, _ x: Int) -> ListNode? {
        let dummy1 = ListNode(0)
        let dummy2 = ListNode(0)
        var node1 = dummy1
        var node2 = dummy2
        while var head = head {
            if head.val < x {
                node1.next = head
                node1 = head
            } else {
                node2.next = head
                node2 = head
            }
            head = head.next!
        }
        node1.next = dummy2.next
        node2.next = nil
        return dummy1.next
    }
}
