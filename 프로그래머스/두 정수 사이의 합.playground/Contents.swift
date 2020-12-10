// 2020.12.09 Wed
// swift 코테 연습
// 프로그래머스
// Level 1
// 두 정수 사이의 합

import Foundation

func solution(_ a:Int, _ b:Int) -> Int64 {
    var num = 0

    
    if a == b {
        return Int64(a)
    }
    
    else if a > b{
        for i in b...a {
            num += i
        }
    }
    else {
        for i in a...b {
            num += i
        }
    }
    
    return Int64(num)
}


// 다른사람 풀이 // 므찌다 .... 나랑 같은데 달라 ....
func solution2(_ a:Int, _ b:Int) -> Int64 {

    let minValue = a < b ? a : b
    let maxValue = a > b ? a : b

    var value: Int64 = 0
    for i in minValue...maxValue {
        value += Int64(i)
    }

    return value
}
