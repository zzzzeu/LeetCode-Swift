class Solution {
    func rotateRight(_ head: ListNode?, _ k: Int) -> ListNode? {
        guard let head = head else {
            return nil
        }
        var count = 1
        var node = head
        while let next = node.next {
            count += 1
            node = next
        }
        node.next = head
        let step = count - k % count
        node = head
        for _ in 1..<step {
            node = node.next!
        }
        let dummy = node.next
        node.next = nil
        return dummy
    }
}
