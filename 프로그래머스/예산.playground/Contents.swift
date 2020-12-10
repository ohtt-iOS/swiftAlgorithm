// 2020.12.09 Wed
// swift 코테 연습
// 프로그래머스
// Level 1
// 예산

import Foundation


// 예산 가장 적게 잡은 팀부터 주기 !!!

func solution(_ d:[Int], _ budget:Int) -> Int {
    var result: Int = 0
    var depart = d.sorted()
    var budget = budget
    var sum = 0
    
    depart.append(budget)
    
    while budget >= depart[0]  {
        budget -= depart[0]
        print(depart)
        depart.removeFirst()
        result += 1
    }
    
    
    
    return result
}

print(solution([1,3,2,5,4], 9))
print(solution([2,2,3,3], 10))


func solution2(_ d:[Int], _ budget:Int) -> Int {
    var result: Int = 0
    var depart = d.sorted()
    var budget = budget
    var sum = 0
    for i in 0..<depart.count {
        if budget >= sum + depart[i] {
            sum += depart[i]
            result += 1
        }
        else {
            break
        }
    }
    
    
    return result
}
