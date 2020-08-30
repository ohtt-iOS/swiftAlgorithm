// 2020.08.29 Sat
// swift 연습
// string에 관하여
// string 다루는 방법
// 1. Index로 접근 (offsetBy:)
// 2. for - in 구문
// 3. Array로 바꿔서 c언어처럼 접근

import UIKit

var s: String = "Happy"
print(s[3])



/*
// 1. Index로 접근 (offsetBy:)

print(s[s.startIndex])
//print(s[s.endIndex]) : 오류
print(s[s.index(before:s.endIndex)])

print(s[s.index(s.startIndex, offsetBy: 0)])
print(s[s.index(s.startIndex, offsetBy: 3)])

print(s[s.index(s.endIndex, offsetBy: -2)])
print(s[s.index(s.endIndex, offsetBy: -4)])
 

// 2. for - in 구문


for a in s {
    print(a)
}


for index in s.indices {
    print(s[index])
}

for (index,value) in s.enumerated() {
    print("index: \(index), value: \(value)")
}

let names: Set = ["소영","나나나나이다","뽀","보라돌이다우다우"]
var shorterIndices: [Set<String>.Index] = []
for (i, name) in zip(names.indices, names) {
    if name.count <= 5 {
        shorterIndices.append(i)
    }
}

for i in shorterIndices {
    print(names[i])
}


// 3. Array로 바꿔서 c언어처럼 접근

let arr = Array(s)
print(arr)
print(arr[3])

let arr_map = s.map { String($0)}
print(arr_map)
print(arr_map[4])

*/
