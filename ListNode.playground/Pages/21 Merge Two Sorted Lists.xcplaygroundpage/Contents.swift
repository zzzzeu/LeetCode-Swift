class Solution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        guard let l1 = l1 else { return l2 }
        guard let l2 = l2 else { return l1 }
        var result: ListNode? = nil
        if l1.val < l2.val {
            result = l1
            result?.next = mergeTwoLists(l1.next, l2)
        } else {
            result = l2
            result?.next = mergeTwoLists(l1, l2.next)
        }
        return result
    }
}
