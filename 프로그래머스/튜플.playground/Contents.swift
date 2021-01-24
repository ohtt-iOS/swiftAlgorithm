// 2021.01.23 SAT
// swift 코테 연습
// 프로그래머스
// Level 2
// 튜플

import UIKit

let s = "{{20,111},{111}}"

var result = [Int]()
var new = s.components(separatedBy: ["}","{", ","])
var myTuple: [String:Int] = [:]

for i in new {
    if Int(i) != nil {
        myTuple[i] = myTuple[i] == nil ? 1 : myTuple[i]! + 1
    }
}

let newTuple = myTuple.sorted{$0.value > $1.value}

for i in newTuple {
    result.append(Int(i.key)!)
}

