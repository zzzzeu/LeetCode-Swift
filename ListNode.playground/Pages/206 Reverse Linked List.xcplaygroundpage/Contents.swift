func reverseList(_ head: ListNode?) -> ListNode? {
    var dummy:ListNode? = nil
    var node = head
    while node != nil {
        let next = node?.next
        node?.next = dummy
        dummy = node
        node = next
    }
    return dummy
}
