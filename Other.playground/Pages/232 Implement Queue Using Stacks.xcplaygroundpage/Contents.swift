class MyQueue {
    
    var array: [Int]
    var count: Int {
        return array.count
    }
    
    /** Initialize your data structure here. */
    init() {
        array = [Int]()
    }
    
    /** Push element x to the back of queue. */
    func push(_ x: Int) {
        array.append(x)
    }
    
    /** Removes the element from in front of queue and returns that element. */
    func pop() -> Int {
        var temp = [Int]()
        while let last = array.popLast() {
            temp.append(last)
        }
        defer {
            while let last = temp.popLast() {
                array.append(last)
            }
        }
        return temp.popLast()!
    }
    
    /** Get the front element. */
    func peek() -> Int {
        return array[0]
    }
    
    /** Returns whether the queue is empty. */
    func empty() -> Bool {
        return array.isEmpty
    }
}
