// 2020.08.31 Mon
// swift 코테 연습
// level 1 : 수박수박수박수박수박수?

import UIKit

print(solution(3))

func solution(_ n:Int) -> String {
    var watermelon : String = ""
    for i in 1...n {
        if i%2 == 0 {
            watermelon.append("박")
        }
        else {
            watermelon.append("수")
        }
    }
    return watermelon
}


//다른 사람 풀이 중 내가 배워야할 부분
// repeating이라는 이니셜라이저가 있었음

func solution2(_ n:Int) -> String {
    return "\(String(repeating: "수박", count: n/2))\(n%2 == 0 ? "" : "수")"
}

print(solution2(3))
