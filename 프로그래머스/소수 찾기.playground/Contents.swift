// 2020.12.16 Wed
// swift 코테 연습
// 프로그래머스
// Level 2
// 소수 찾기

import Foundation

func solution(_ numbers:String) -> Int {
    let myArr: [String] = numbers.compactMap{String($0)}
    let afterCombArr = Set(combination(numbers.count, myArr).compactMap{ return Int($0)}) // Int로 바꿔주면서 다시 Set을 적용시켜줘야함
    var count = 0
    
   
    for i in afterCombArr {
        if prime(i) {
            count += 1
        }
    }
    
    return count
}

// 조합 함수
func combination(_ length: Int, _ array: [String]) -> Set<String> {
    if length == 1 { return Set(array) }
    
    var result = Set<String>()
    for i in 0..<array.count {
        let num = array[i]
        var tempArray = array
        tempArray.remove(at: i)
        
        let afterComb = combination(length-1, tempArray)
        let afterCombArr = afterComb.compactMap{num + $0}
        result = result.union(afterComb)
        result = result.union(afterCombArr)
    }
    
    return result
}

// 소수 구하는 함수
func prime(_ sosu: Int) -> Bool {

    if sosu < 2 {
        return false
    }
    for i in 2..<Int(sqrt(Double(sosu)))+1 {
        if (sosu % i) == 0 {
            return false
        }
    }

    return true
}


solution("17") // 3
solution("011") //2

