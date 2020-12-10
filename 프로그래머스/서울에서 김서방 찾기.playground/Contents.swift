// 2020.09.03 THU
// swift 코테 연습
// level 1 : 서울에서 김서방 찾기


import UIKit

// 처음 짰던 코드 200903
func solution(_ seoul:[String]) -> String {
    var a : Int = 0
    for i in 0..<seoul.count {
        if seoul[i] == "Kim" {
            a = i
        }
    }
    
    return "김서방은 \(a)에 있다"
}

solution(["Jane","Kim"])


//남의 풀이
/*
func solution(_ seoul:[String]) -> String {
    return "김서방은 \(seoul.index(of: "Kim")!)에 있다"
}
*/
