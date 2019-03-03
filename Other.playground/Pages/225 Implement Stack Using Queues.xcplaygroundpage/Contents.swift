class MyStack {
    
    var array: [Int]
    
    /** Initialize your data structure here. */
    init() {
        array = [Int]()
    }
    
    /** Push element x onto stack. */
    func push(_ x: Int) {
        array.append(x)
        for _ in 0..<array.count - 1 {
            array.append(array.removeFirst())
        }
    }
    
    /** Removes the element on top of the stack and returns that element. */
    func pop() -> Int {
        return array.removeFirst()
    }
    
    /** Get the top element. */
    func top() -> Int {
        return array[0]
    }
    
    /** Returns whether the stack is empty. */
    func empty() -> Bool {
        return array.isEmpty
    }
}
