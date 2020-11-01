class Solution {
    func detectCycle(_ head: ListNode?) -> ListNode? {
        var slow = head
        var fast = head
        while slow != nil && fast != nil {
            if fast?.next != nil {
                slow = slow!.next
                fast = fast!.next?.next
            } else {
                return nil
            }
            if slow === fast {
                var temp = head
                while(!(temp === slow)) {
                    temp = temp!.next
                    slow = slow!.next
                }
                return temp
            }
        }
        return nil
    }
}
