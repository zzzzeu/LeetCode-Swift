class Solution {
    func sortList(_ head: ListNode?) -> ListNode? {
        if head?.next == nil {
            return head
        }
        var fast = head, slow = head
        while fast?.next != nil && fast?.next?.next != nil {
            fast = fast?.next?.next
            slow = slow?.next
        }
        let middle = slow?.next
        slow?.next = nil
        let left = sortList(head)
        let right = sortList(middle)
        return merge(left, right)
    }
    func merge(_ left: ListNode?, _ right: ListNode?) -> ListNode? {
        let head = ListNode(0)
        var temp = head
        var left = left, right = right
        while left != nil && right != nil {
            if left!.val < right!.val {
                temp.next = left
                left = left?.next
                temp = temp.next!
            } else {
                temp.next = right
                right = right?.next
                temp = temp.next!
            }
        }
        if left == nil {
            temp.next = right
        } else {
            temp.next = left
        }
        return head.next
    }
}
