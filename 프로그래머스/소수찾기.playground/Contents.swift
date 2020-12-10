// 2020.12.09 Wed
// swift 코테 연습
// 프로그래머스
// Level 1
// 소수찾기

import UIKit

func solution(_ n: Int) -> Int {
    var count = 0
    var array = Array.init(repeating: false, count: n+1)
    
    for i in 2...n {
        if array[i] == false {
            count += 1
            
            for j in stride(from: i, through: n, by: i) {
               array[j] = true
            }
        }
    }
    return count
}


print(solution(10))
print(solution(5))


func processTime(blockFunction: () -> ()) {
    let startTime = CFAbsoluteTimeGetCurrent()
    
    blockFunction()
    let processTime = CFAbsoluteTimeGetCurrent() - startTime
    print("수행 시간 = \(processTime)")
}

processTime {
    solution(10000)
}
