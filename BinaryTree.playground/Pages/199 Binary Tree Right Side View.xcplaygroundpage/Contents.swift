class Solution{
    func rightSideView(_ root: TreeNode?) -> [Int] {
        rightSide(root, 1)
        return right
    }
    var depth = 0
    var right = [Int]()
    func rightSide(_ root: TreeNode?, _ n: Int) {
        if root != nil {
            if n > depth {
                right.append(Int(root!.val))
            }
            if root?.left == nil && root?.right == nil {
                if n > depth {
                    depth = n
                }
            }
            rightSide(root?.right, n + 1)
            rightSide(root?.left, n + 1)
        }
    }
}
