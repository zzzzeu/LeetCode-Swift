class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let result = ListNode(0)
        var dummy = result
        var carry = 0
        var listOne = l1
        var listTwo = l2
        
        while listOne != nil || listTwo != nil {
            let num1 = listOne?.val ?? 0
            let num2 = listTwo?.val ?? 0
            let sum = num1 + num2 + carry
            carry = sum / 10
            dummy.next = ListNode(sum % 10)
            dummy = dummy.next ?? dummy
            listOne = listOne?.next
            listTwo = listTwo?.next
        }
        if carry == 1 {
            dummy.next = ListNode(1)
        }
        return result.next
    }
}
