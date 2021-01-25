// 2021.01.25 MON
// swift 코테 연습
// 프로그래머스
// Level 1
// 신규 아이디 추천

import UIKit

var myID: String = "abcdefghijklmn.p"
//1차
myID = myID.lowercased()

//2차
var newID: String = ""
for i in myID {
    if i.isLetter || i.isNumber || i == "-" || i == "_" || i == "." {
        newID.append(i)
    }
}

//3차
while newID.contains("..") {
    newID = newID.replacingOccurrences(of: "..", with: ".")
}

//4차
while newID.hasPrefix(".") {
    newID.removeFirst()
}

while newID.hasSuffix(".") {
    newID.removeLast()
}

//5차
if newID == "" {
    newID = "a"
}

//6차
if newID.count >= 16 {
    let index = newID.index(newID.startIndex, offsetBy: 15)
    newID = String(newID[newID.startIndex..<index])
    if newID.hasSuffix(".") {
        newID.removeLast()
    }
}

//7차
if newID.count <= 2 {
    while newID.count != 3 {
        newID = newID + String(newID.last!)
    }
}

print(newID)
