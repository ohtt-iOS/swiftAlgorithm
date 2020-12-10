// 2020.12.03 Thu
// swift 코테 연습
// 이것이 코딩테스트다
// 구현 - 완전탐색
// 문제 2번 - 시각

import Foundation

// 내풀이
/*
 let n = 5
var count = 0
var time = [0,0,0]₩
var stringTime = ""

while !(time[0] == n && time[1] == 59 && time[2] == 59){
    if time[2] == 60 {
        time[2] = 0
        time [1] += 1
    }
    if time[1] == 60 {
        time[1] = 0
        time[0] += 1
    }
    stringTime = String(time[0]) + String(time[1]) + String(time[2])
    //print(stringTime)
    if stringTime.contains("3") {
        count += 1
    }
    time[2] += 1
}


print(count)

*/

//동빈님 풀이
let n = 5
var count = 0
var stringTime = ""

for i in 0...n {
    for j in 0..<60 {
        for k in 0..<60 {
            stringTime = String(i) + String(j) + String(k)
            if stringTime.contains("3") {
                count += 1
            }
        }
    }
}
print(count)
