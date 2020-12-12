// 2020.12.11 FRI
// swift 코테 연습
// 이것이 코딩테스트다
// BFS 연습

import Foundation

public struct Queue<T> {
  fileprivate var array = [T]()

  public var isEmpty: Bool {
    return array.isEmpty
  }
  
  public var count: Int {
    return array.count
  }

  public mutating func enqueue(_ element: T) {
    array.append(element)
  }
  
  public mutating func dequeue() -> T? {
    if isEmpty {
      return nil
    } else {
      return array.removeFirst()
    }
  }
  
  public var front: T? {
    return array.first
  }
}


let graph = [
    [],
    [2,3,8],
    [1,7],
    [1,4,5],
    [3,5],
    [3,4],
    [7],
    [2,6,8],
    [1,7]
]

var visited = [Bool](repeating: false, count: 9)
var myQueue = Queue<Int>()

func bfs (start: Int) {
    myQueue.enqueue(start)
    visited[start] = true
    
    while !myQueue.isEmpty {
        guard let a = myQueue.dequeue() else { return }
        print(a, terminator: " ")
        for i in graph[a] {
            if !visited[i] {
                myQueue.enqueue(i)
                visited[i] = true
            }
        }
    }
}

bfs(start: 1)

