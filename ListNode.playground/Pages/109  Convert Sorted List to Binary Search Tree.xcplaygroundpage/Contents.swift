class Solution {
    func sortedListToBST(_ head: ListNode?) -> TreeNode? {
        if head == nil {
            return nil
        }
        if head?.next == nil{
            return TreeNode(head!.val)
        }
        var fast = head
        var slow = head
        var middle = head
        while fast?.next != nil && fast?.next?.next != nil {
            middle = slow
            slow = slow?.next
            fast = fast?.next?.next
        }
        fast = slow?.next
        let root = TreeNode(slow!.val)
        if head!.val != slow!.val {
            middle?.next = nil
            root.left = sortedListToBST(head)
        }
        root.right = sortedListToBST(fast)
        return root
    }
}
