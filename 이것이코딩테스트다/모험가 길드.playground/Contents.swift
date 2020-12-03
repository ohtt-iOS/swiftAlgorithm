// 2020.12.02 Wed
// swift 코테 연습
// 이것이 코딩테스트다
// Greedy : 탐욕법
// 문제 4번 - 모험가 길드

import UIKit

/*
 나의 생각

 */
//
//let n = 5
//var numbers = [2,2,2,3,5,7]
//// 낮은 사람부터 확인하기위해 오름차순 정렬
//numbers.sort()
//
//
//var result = 0
//var storage: [Int] = []
//print(numbers)
//
//for i in numbers {
//    if i <= storage.count + 1 {
//        storage = []
//        result += 1
//    }
//    else {
//        // 그룹을 만들지 못하면 차곡차곡 쌓아둔다
//        storage.append(i)
//    }
//}
//
//print(result)
//


// 동빈님 풀이

let n = 5
var data: [Int] = [1,2,4,2,3]
data.sort()

var result = 0
var count = 0

for i in data {
    count += 1
    if count >= i {
    result += 1
    count = 0
    }
}

print(result)
