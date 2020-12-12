// 2020.12.12 SAT
// swift 코테 연습
// 프로그래머스
// Level 1
// 나누어 떨어지는 숫자 배열

import Foundation

func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    var result = [Int]()
    
    for i in arr {
        if i % divisor == 0 {
            result.append(i)
        }
    }
    
    if result.isEmpty {
        return [-1]
    }
    else {
        return result.sorted()
    }
}

print(solution([5,9,7,10], 5))
