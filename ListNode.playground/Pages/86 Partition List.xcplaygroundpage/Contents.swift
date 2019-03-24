class Solution {
    func partition(_ head: ListNode?, _ x: Int) -> ListNode? {
        var head = head
        let dummy1 = ListNode(0)
        let dummy2 = ListNode(0)
        var node1 = dummy1
        var node2 = dummy2
        while head != nil {
            if head!.val < x {
                node1.next = head
                node1 = node1.next!
            } else {
                node2.next = head
                node2 = node2.next!
            }
            head = head!.next
        }
        node1.next = dummy2.next
        node2.next = nil
        return dummy1.next
    }
}
