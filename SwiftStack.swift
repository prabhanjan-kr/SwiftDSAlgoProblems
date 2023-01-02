
public struct Stack<Element>{
    private var storage : [Element] = []
    public init() {}
    
    public mutating func push(_ element : Element) {
        storage.append(element)
    }
    @discardableResult
    public mutating func pop() -> Element? {
        storage.popLast()
    }
}
extension Stack : CustomDebugStringConvertible {
    public var debugDescription: String {
     """
     ---- Top ----
     \(storage.map {"\($0)"}.reversed().joined(separator: "\n"))
     ---- ---- ----
     """
    }
    
    
}

var stack = Stack<Int>()
stack.push(0)
stack.push(1)
stack.push(2)
stack.push(3)
print(stack.debugDescription)
stack.pop()
print(stack.debugDescription)
