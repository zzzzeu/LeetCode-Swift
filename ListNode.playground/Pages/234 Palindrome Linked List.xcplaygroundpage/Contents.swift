class Solution {
    func isPalindrome(_ head: ListNode?) -> Bool {
        if head == nil || head?.next == nil {
            return true
        }
        var half = [Int]()
        var fast = head
        var slow = head
        half.append(head!.val)
        while fast?.next != nil && fast?.next?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
            half.append(slow!.val)
        }
        if fast?.next == nil {
            half.removeLast()
        }
        while slow?.next != nil {
            slow = slow?.next
            let temp = half.removeLast()
            if temp != slow!.val {
                return false
            }
        }
        return true
    }
}
