// 2020.12.12 SAT
// swift 코테 연습
// 프로그래머스
// Level 1
// 내적

import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    var result = 0
    
    for i in 0..<a.count {
        result += a[i]*b[i]
    }
    
    return result
}
