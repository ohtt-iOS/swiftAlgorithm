// 2021.02.12 Fri
// swift 코테 연습
// 백준
// 실버 4
// 게임을 만든 동준이

import Foundation

let testCase = Int(readLine()!)!
var grades = [Int]()
var result = 0
for _ in 0..<testCase {
    let N = Int(readLine()!)!
    grades.append(N)
}

for i in 1..<grades.count {
    while grades[grades.count-i] <= grades[grades.count-i-1] {
        result += 1
        grades[grades.count-i-1] -= 1
    }
}

print(result)
