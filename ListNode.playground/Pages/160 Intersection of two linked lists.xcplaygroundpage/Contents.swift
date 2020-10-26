class Solution {
    func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
        if headA == nil || headB == nil {
            return nil
        }
        var pA: ListNode? = headA
        var pB: ListNode? = headB

        while pA !== pB {
            pA = (pA == nil) ? headB : (pA?.next)
            pB = (pB == nil) ? headA : (pB?.next)
        }
        return pA
    }
}
