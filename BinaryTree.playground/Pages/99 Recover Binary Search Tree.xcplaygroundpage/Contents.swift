class Solution {
    var bigger: TreeNode!
    var smaller: TreeNode!
    var node = TreeNode(Int.min)
    func recoverTree(_ root: TreeNode?) {
        if root == nil {
            return
        }
        inorderTraverse(root)
        let temp = smaller.val
        smaller.val = bigger.val
        bigger.val = temp
    }
    func inorderTraverse(_ root: TreeNode?) {
        guard let root = root else {
            return
        }
        inorderTraverse(root.left)
        if bigger == nil && root.val <= node.val {
            bigger = node
        }
        if root.val <= node.val {
            smaller = root
        }
        node = root
        inorderTraverse(root.right)
    }
}
