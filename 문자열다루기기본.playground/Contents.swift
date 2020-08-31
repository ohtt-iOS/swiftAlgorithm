// 2020.08.31 Mon
// swift 코테 연습
// level 1 : 문자열 다루기 기본

import UIKit

var str = "a123"
var strToInt : Int? = Int(str)

if strToInt != nil {
    print("only numbers")
}
else {
    print("also alphabet")
}

// 문제 풀이
/*
 
 func solution(_ s:String) -> Bool {
     let sToInt : Int? = Int(s)
     
     return (s.count == 4 || s.count == 6) && sToInt != nil ? true : false
 }
 
 */
