// 2021.02.12 Fri
// swift 코테 연습
// 백준
// 실버 3
// 수리공 항승

import Foundation

var first = readLine()!.split(separator: " ").map{Int(String($0))!}
var second = readLine()!.split(separator: " ").map{Int(String($0))!}

second.sort()

let length = first[1]
var start = second[0] + length - 1
var result = 1


for i in 1..<second.count {
    if second[i] > start {
        result += 1
        start = second[i] + length - 1
    }
}

print(result)
