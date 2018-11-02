class Solution {
    func middleNode(_ head: ListNode?) -> ListNode? {
        var node = head
        var fast = head?.next
        while fast != nil {
            fast = fast?.next?.next
            node = node?.next
        }
        return node
    }
}
