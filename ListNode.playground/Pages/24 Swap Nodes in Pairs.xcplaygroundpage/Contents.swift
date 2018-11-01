class Solution {
    func swapPairs(_ head: ListNode?) -> ListNode? {
        if head?.next == nil {
            return head
        }
        var dummy: ListNode? = nil
        let node = head
        dummy = node?.next
        node?.next = swapPairs(dummy?.next)
        dummy?.next = node
        return dummy
    }
}
