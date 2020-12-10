// 2020.12.04 FRI
// swift 자료구조
// STACK

// 삽입과 삭제
// 먼저 들어온 것이 마지막에 나간다

// push와 pop은 O(1)

import Foundation

var stack = Stack(array: [])



public struct Stack<T> {
    fileprivate var array = [T]()
    
    public var count: Int {
        return array.count
    }
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public mutating func push(_ element: T) {
        array.append(element)
    }
    public mutating func pop() -> T? {
        return array.popLast()
    }
    
    public var top: T? {
        return array.last
    }
    
}
