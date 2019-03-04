class MinStack {
    
    var array: [Int]
    
    /** initialize your data structure here. */
    init() {
        array = [Int]()
    }
    
    func push(_ x: Int) {
        if array.isEmpty {
            array.append(x)
            array.append(x)
        } else {
            let num = min(array[array.count - 1], x)
            array.append(x)
            array.append(num)
        }
    }
    
    func pop() {
        array.popLast()
        array.popLast()
    }
    
    func top() -> Int {
        return array[array.count - 2]
    }
    
    func getMin() -> Int {
        if array.isEmpty {
            return 0
        }
        return array[array.count - 1]
    }
}
