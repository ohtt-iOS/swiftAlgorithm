// 2021.01.22 FRI
// swift 코테 연습
// 프로그래머스
// Level 2
// 위장

import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var category: [String: Int] = [:]
    var answer = 1

    for i in clothes {
        if category[i[1]] == nil {
            category[i[1]] = 1
        }
        else {
         category[i[1]]! += 1
        }
    }
    
    for i in category.values {
        answer *= (i+1)
    }
    
    
    return  answer - 1
}

