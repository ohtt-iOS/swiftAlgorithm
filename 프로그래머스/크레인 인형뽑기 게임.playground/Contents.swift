// 2020.12.14 MON
// swift 코테 연습
// 프로그래머스
// Level 1
// 크레인 인형 뽑기


import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var result = 0
    var board = board
    var store = [0]
    var storeLast = 0
    
    for i in moves {
        var index = 0
        while true {
            if index == board.count  { break }
            if board[index][i-1] != 0 {
                store.append(board[index][i-1])
                print(store)
                if storeLast == store.last {
                    store.popLast()
                    store.popLast()
                    result += 2
                    storeLast = store.last!
                }
                storeLast = store.last!
                board[index][i-1] = 0
                break
            }
            index += 1
        }
    }
    
    return result
}

solution([[0,0,0,0,0],[0,0,1,0,3],[0,2,5,0,1],[4,2,4,4,2],[3,5,1,3,1]], [1,5,3,5,1,2,1,4]) //4
