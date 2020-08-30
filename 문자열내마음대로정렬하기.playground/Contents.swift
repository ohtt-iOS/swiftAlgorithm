// 2020.08.30 Sat
// swift 코테 연습
// level 1 : 문자열 내 마음대로 정렬하기

import UIKit

var strings:[String] = ["abce","abcd","cdx"]
var n:Int = 2

func compare (a: String, b:String) -> Bool {
    let aStringToArray = Array(a)
    let bStringToArray = Array(b)
    
    if aStringToArray[n] == bStringToArray[n] {
        return a < b
    }
    else {
        return aStringToArray[n] > bStringToArray[n] ? false : true
    }
}

let stringsSorted = strings.sorted(by: compare(a:b:))
print(stringsSorted)
