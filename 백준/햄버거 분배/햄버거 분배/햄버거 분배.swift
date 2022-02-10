// 2021.02.12 Fri
// swift 코테 연습
// 백준
// 실버 3
// 햄버거 분배

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let num1 = input[0]
let num2 = input[1]
let givenString = String(readLine()!)

var result = 0
var nowHam = -1
let newList = Array(givenString)
for i in 0..<newList.count {
    if newList[i] == "P" {
        for j in max(nowHam+1,i-num2)..<min(i+num2+1,num1) {
            
            if newList[j] == "H" {
                result += 1
                nowHam = j
                break
            }
        }
    }
}

print(result)

