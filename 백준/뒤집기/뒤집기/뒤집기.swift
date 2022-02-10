// 2021.02.12 Fri
// swift 코테 연습
// 백준
// 실버 5
// 뒤집기

import Foundation

let getString: String = readLine()!
var zero = 0
var one = 0
var beforeNum = getString.first!

if beforeNum == "0" {
    one += 1
}
else {
    zero += 1
}


for i in getString {
    if i != beforeNum {
        if i == "0" { one += 1 }
        else { zero += 1 }
    }
    beforeNum = i
}

print(min(zero,one))
