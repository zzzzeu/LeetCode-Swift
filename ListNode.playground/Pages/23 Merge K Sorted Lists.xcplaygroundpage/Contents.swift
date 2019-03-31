class Solution {
    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
        if lists.isEmpty {
            return nil
        }
        var temp = [Int]()
        for i in lists.indices {
            let node = lists[i]
            while var node = node {
                temp.append(node.val)
                node = node.next!
            }
        }
        temp = temp.sorted()
        let dummy = ListNode(0)
        var node = dummy
        for num in temp {
            node.next = ListNode(num)
            node = node.next!
        }
        node.next = nil
        return dummy.next
    }
}
