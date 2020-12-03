// 2020.12.02 Wed
// swift 코테 연습
// 이것이 코딩테스트다
// Greedy : 탐욕법
// 문제 1번 - 거스름 돈

import Foundation

var n: Int = 1260
var count: Int = 0

let array: [Int] = [500,100,50,10]

for coin in array {
    count += n / coin
    n %= coin
}

print(count)
