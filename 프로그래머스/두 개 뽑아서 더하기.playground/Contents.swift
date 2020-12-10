// 2020.12.09 Wed
// swift 코테 연습
// 프로그래머스
// Level 1
// 두 개 뽑아서 더하기

import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var result : Set<Int> = []
    let initnums = numbers
    var numbers = numbers
    
    for i in 0..<numbers.count {
        let num = numbers.remove(at: i)
        let temp = numbers
        print(temp)
        for k in 0..<temp.count {
            result.insert(num + temp[k])
        }
        numbers = initnums
        print(result)
    }
    

    return Array(result).sorted()
}

print(solution([2,1,3,4,1]))


