// 2020.12.09 Wed
// swift 코테 연습
// 프로그래머스
// Level 1
// 3진법 뒤집기

import Foundation

func solution(_ n:Int) -> Int {
    var num = n
    var pot = [Int]()
    var count = 0
    
    while(num != 0) {
        pot.append(num%3)
        num /= 3
    }
    
    for i in 0..<pot.count {
        count += pot[i] * Int(truncating: pow(3, (pot.count - 1 - i)) as NSNumber)
    }
    
    
    return count
}

// 남의 풀이 (진법에 관련된 함수가 있음)

func solution2(_ n:Int) -> Int {
       let flipToThree = String(n,radix: 3)
       let answer = Int(String(flipToThree.reversed()),radix:3)!
       return answer

   }



print(solution(45))
print(solution(125))
