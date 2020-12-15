// 2020.12.15 TUE
// swift 자료구조
// LINKED LIST

import Foundation

class Node<T> {
    var value: T
    var next: Node<T>?
    
    init(value: T, next: Node<T>?) {
        self.value = value
        self.next = next
    }
}

class LinkedList<T> {
    var head: Node<T>?
    var tail: Node<T>?
    
    init (head: Node<T>?) {
        self.head = head
        self.tail = head
    }
    
    var isEmpty: Bool {
        return head == nil
    }
    
    var first: Node<T>? {
        return head
    }
    
    var last: Node<T>? {
        guard var node = head else {
            return nil
        }
        
        while let next = node.next {
            node = next
        }
        return node
    }
    
    func append(_ newNode: Node<T>) {
        if let tail = self.tail {
            tail.next = newNode
            self.tail = tail.next
        } else {
            self.head = newNode
            self.tail = newNode
        }
    }
    
    var count: Int {
        guard var node = head else {
            return 0
        }
        
        var count = 0
        while let next = node.next {
            node = next
            count += 1
        }
        return count
    }
    
    func node(at index: Int) -> Node<T>? {
        if index == 0 {
            return head
        } else {
            var node = head!.next
            for _ in 1..<index {
                node = node?.next
                if node == nil {
                    break
                }
            }
            
            return node
        }
    }
    
    func removeAll() {
        head = nil
    }
    
    func remove(at index: Int) -> T? {
        // index-1 위치의 노드(frontNode)를 찾을 수 없는 경우 -> 아무 동작 하지 않음
        guard let frontNode = node(at: index-1) else {
            return nil
        }

        // index-1 위치의 노드(frontNode)가 마지막 노드인 경우 -> 아무 동작 하지 않음
        guard let removeNode = frontNode.next else {
            return nil
        }

        // index 위치의 노드(removeNode)가 마지막 노드인 경우 -> tail에 frontNode를 저장함
        guard let nextNode = removeNode.next else {
            frontNode.next = nil
            self.tail = frontNode
            return
        }

        // index 위치의 노드(removeNode)가 마지막 노드가 아닌 경우
        frontNode.next = nextNode
    }

    
    func remove(node: Node) -> T {
        let prev = node.previous
        let next = node.next
        
        if let prev = prev {
            prev.next = next
        } else {
            head = next
        }
        next?.previous = prev
        
        node.previous = nil
        node.next = nil
        return node.value
    }
    
    func removeLast() -> T {
        return remove(node: last!)
    }
    
    func remove(at index: Int) -> T {
        let n = node(at: index)
        return remove(node: n)
    }
}

