// 2020.12.09 Wed
// swift 코테 연습
// 프로그래머스
// Level 1
// 체육복 찾기

import UIKit

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    
    var students: [Bool] = Array.init(repeating: true, count: n+2)
    var reserve_my = reserve
    for i in 1...n {
        if lost.contains(i) {
            students[i] = false
        }
    }
    
    for i in reserve {
        if students[i] == false {
            students[i] = true
            if let index = reserve_my.firstIndex(of: i) {
                reserve_my.remove(at: index)
            }
        }
    }
    
    for i in reserve_my {
        if students[i-1] == false {
            students[i-1] = true
        }
        
        else if students [i+1] == false {
            students[i+1] = true
        }
    }
    
    
    
    var count = 0
    for i in 0..<students.count {
        if students[i] == true {
            count += 1
        }
    }
    print(students)
    
    return count - 2
}



print(solution(5, [2,4], [1,3,5])) //5
print(solution(5, [2,4], [3])) //4
print(solution(3, [3], [1]))//2
print(solution(5, [2,3], [1,2]))
print(solution(5, [2,3,4], [3,4,5]))
print(solution(5, [1], [3,5]))
