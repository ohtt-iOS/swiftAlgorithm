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
    
    var count: Int {
        guard var node = head else {
            return 0
        }
        
        var count = 1
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
    
    
    func append(_ newNode: Node<T>) {
        if let tail = self.tail {
            tail.next = newNode
            self.tail = tail.next
        } else {
            self.head = newNode
            self.tail = newNode
        }
    }
    
    func insert(_ newNode: Node<T>, at index: Int) {
        if self.head == nil {
            self.head = newNode
            self.tail = newNode
            return
        }
        guard let frontNode = node(at: index-1) else {
            self.tail?.next = newNode
            self.tail = newNode
            return
        }
        guard let nextNode = frontNode.next else {
            frontNode.next = newNode
            self.tail = newNode
            return
        }
        newNode.next = nextNode
        frontNode.next = newNode
    }
    
    func removeAll() {
        head = nil
    }
    
    func remove(at index: Int) -> T? {
        guard let frontNode = node(at: index-1) else { // 인덱스 앞 노드를 찾을 수 없다면 -> nil 반환
            return nil
        }
        
        guard let removeNode = frontNode.next else { // 인덱스 앞 노드가 마지막 노드라면 -> nil 반환
            return nil
        }
        
        guard let nextNode = removeNode.next else { // index가 마지막 위치라면? -> tail에 index 이전 노드 저장
            frontNode.next = nil
            self.tail = frontNode
            return removeNode.value
        }
        
        frontNode.next = nextNode // index - 1 가 마지막 아닐 때 (일반적인 경우)
        
        return removeNode.value
    }
    
    public func removeLast() -> T? {
        return remove(at: self.count - 1)
    }
}



var myLinkedList = LinkedList<Int>(head: Node(value: 3, next: nil))
myLinkedList.append(Node(value: 4, next: nil))
myLinkedList.append(Node(value: 8, next: nil))


print(myLinkedList.count)
print(myLinkedList.remove(at: 2)!)
print(myLinkedList.count)
myLinkedList.append(Node(value: 2, next: nil))
print(myLinkedList.isEmpty)
print(myLinkedList.node(at: 1)!.value)
myLinkedList.insert(Node(value: 9, next: nil), at: 1)
print(myLinkedList.last!.value)

for i in 0..<myLinkedList.count {
    print(myLinkedList.node(at: i)!.value, terminator : " ")
    
}
print("")
print(myLinkedList.removeLast()!)
