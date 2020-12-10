// 2020.12.05 SAT
// swift 코테 연습
// 이것이 코딩테스트다
// DFS - 깊이우선탐색
// DFS 예제


import Foundation


class Graph {
    var nodes: [Node]
    init() {
        self.nodes = [Node]()
    }
    func addNode(node: Node) {
        nodes.append(node)
    }
    func depthFirstSearch(startNode: Node, lastNode: Node) -> [[Node]] {
        var result = [[Node]]()

        func dfs(startNode: Node, visitedArr: [Node], lastNode: Node) {
            print("startNode : \(startNode)")
            startNode.visit = true
            
            guard startNode != lastNode else {
                let node = visitedArr + [startNode]
                result.append(node)
                print("append문")
                print(node)
                return
            }
            
            for edge in startNode.edges {
                print("for문")
                // 앞이 true이면 true == false가 false가 나와서 continue
                print(edge.source)
                print(edge.destination)
                print(visitedArr.contains(where: {$0 == edge.source}))
                guard visitedArr.contains(where: {$0 == edge.source}) == false else { continue }
                dfs(startNode: edge.destination, visitedArr: visitedArr + [edge.source], lastNode: lastNode)
            }
        }
        
        dfs(startNode: startNode, visitedArr: [], lastNode: lastNode)
        return result
    }
}
class Node {
    var value: String
    init(value: String) {
        self.value = value
    }
    var visit = false
    var edges = [Edge]()
    func addEdge(edge: Edge) {
        edges.append(edge)
    }
    static func == (lhs: Node, rhs: Node) -> Bool {
        return lhs.value == rhs.value
    }
    static func != (lhs: Node, rhs: Node) -> Bool {
        return lhs.value != rhs.value
    }
}

class Edge {
    var source: Node
    var destination: Node
    init(from source: Node, to destination: Node) {
        self.source = source
        self.destination = destination
    }
}

var graph = Graph()

var NodeA = Node(value: "A")
var NodeB = Node(value: "B")
var NodeC = Node(value: "C")
var NodeD = Node(value: "D")
var NodeE = Node(value: "E")

graph.addNode(node: NodeA)
graph.addNode(node: NodeB)
graph.addNode(node: NodeC)
graph.addNode(node: NodeD)
graph.addNode(node: NodeE)

NodeA.addEdge(edge: Edge(from: NodeA, to: NodeB))
NodeA.addEdge(edge: Edge(from: NodeA, to: NodeC))
NodeA.addEdge(edge: Edge(from: NodeA, to: NodeD))
NodeB.addEdge(edge: Edge(from: NodeB, to: NodeA))
NodeB.addEdge(edge: Edge(from: NodeB, to: NodeD))
NodeB.addEdge(edge: Edge(from: NodeB, to: NodeE))
NodeC.addEdge(edge: Edge(from: NodeC, to: NodeB))
NodeC.addEdge(edge: Edge(from: NodeC, to: NodeD))
NodeD.addEdge(edge: Edge(from: NodeD, to: NodeE))


print(graph.depthFirstSearch(startNode: NodeA, lastNode: NodeE))

extension Node: CustomStringConvertible {
    var description: String {
        return String(value)
    }
    
}
