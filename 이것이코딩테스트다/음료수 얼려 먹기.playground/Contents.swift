// 2020.12.12 SAT
// swift 코테 연습
// 이것이 코딩테스트다
// DFS 음료수 얼려 먹기


import Foundation

let n = 4
let m = 5
var graph: [[Int]] = []
var result = 0

graph.append(contentsOf: Array(arrayLiteral: "0 0 1 1 0".split(separator: " ").map(){Int(String($0))!}))
graph.append(contentsOf: Array(arrayLiteral: "0 0 0 1 1".split(separator: " ").map(){Int(String($0))!}))
graph.append(contentsOf: Array(arrayLiteral: "1 1 1 1 1".split(separator: " ").map(){Int(String($0))!}))
graph.append(contentsOf: Array(arrayLiteral: "0 0 0 0 0".split(separator: " ").map(){Int(String($0))!}))

for i in 0..<n {
    for j in 0..<m {
        if dfs(i: i, j: j) == true {
            result += 1
        }
    }
}


func dfs(i: Int , j: Int) -> Bool {
    if i <= -1 || i >= n || j <= -1 || j >= m {
        return false
    }
    if graph[i][j] == 0 {
        graph [i][j] = 1
        dfs(i: i-1, j: j)
        dfs(i: i, j: j-1)
        dfs(i: i+1, j: j)
        dfs(i: i, j: j+1)
        return true
    }
   
    return false
}

print(result)
