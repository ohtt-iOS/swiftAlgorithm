// 2021.02.20 Sat
// swift 코테 연습
// 백준
// 브론즈 2
// 럭키 스트레이트

import Foundation

let num = String(readLine()!)
var count = num.count
var front = 0
var back = 0

for i in num {
    if count > num.count/2 {
        front += Int(String(i))!
    }
    else{
        back += Int(String(i))!
    }
    count -= 1
}


if front == back {
    print("LUCKY")
}
else {
    print("READY")
}
