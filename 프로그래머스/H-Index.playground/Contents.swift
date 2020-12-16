// 2020.12.16 Wed
// swift 코테 연습
// 프로그래머스
// Level 2
// H-Index

import Foundation

func solution(_ citations:[Int]) -> Int {
    var result = 0
    let citations = citations.sorted(by: >)
    
    while true {
        var resultCount = 0
        for i in citations {
            if i >= result {
                resultCount += 1
            }
            if resultCount >= result { break }
        }
        
        if result > resultCount {
            return result - 1
        }
        
        result += 1
    }
    
    
    return result
}


// 똑똑한걸 ..?

func solution2(_ citations:[Int]) -> Int {
    for (index, cit) in citations.sorted(by: >).enumerated() {
        if index >= cit {
            return index
        }
    }
    return citations.count
}


solution([3,0,6,1,5]) // 3
solution2([3,0,6,1,5])
solution2([5,5,5,5,5])
solution2([0,0,0,0,0])
