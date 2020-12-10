// 2020.12.03 Thu
// swift 코테 연습
// 이것이 코딩테스트다
// 구현
// 문제 3번 - 왕실의 나이트

import Foundation


//내풀이
//let location = [2,3]
//var count = 0
//
//let changeX = [1,1,2,2,-1,-1,-2,-2]
//let changeY = [2,-2,1,-1,2,-2,1,-1]
//
//for i in 0..<8 {
//    if (location[0] + changeX[i] > 0) && (location[1] + changeY[i] > 0)
//    && (location[0] + changeX[i] < 9) && (location[1] + changeY[i] < 9) {
//        count += 1
//    }
//}
//print(count)
//

// 동빈님 풀이

let row = 2
let column = 3
var nextRow = 0
var nextColumn = 0

let steps = [(-2,-1),(-1,-2),(1,-2),(2,-1),(2,1),(1,2),(-1,2),(-2,1)]
var result = 0

for step in steps {
    // swift 튜플은 .숫자 이런식으로 값을 가져온다
    nextRow = row + step.0
    nextColumn = column + step.1
    
    if nextRow >= 1 && nextRow <= 8 && nextColumn >= 1 && nextColumn <= 8 {
        result += 1
    }
}

print(result)
