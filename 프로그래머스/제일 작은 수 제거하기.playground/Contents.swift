// 2020.12.12 SAT
// swift 코테 연습
// 프로그래머스
// Level 1
// 제일 작은 수 제거하기

import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var newArray = arr
    let minNum = newArray.min()
    
    for i in 0..<newArray.count {
        if  newArray[i] == minNum {
            newArray.remove(at: i)
            return newArray.isEmpty ? [-1] : newArray
        }
    }
    return [-1]
}
