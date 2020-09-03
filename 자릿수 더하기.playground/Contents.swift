// 2020.09.03 THU
// swift 코테 연습
// level 1 : 자릿수 더하기

import UIKit

func solution(_ n:Int) -> Int
{
    var answer : Int = 0
    let stringTest : Array = Array(String(n))
    for i in 0..<stringTest.count {
        answer += Int(String(stringTest[i]))!
    }
 
    return answer
}
solution(345)

// 연습해본 것
/*
let test : Int = 345
var result : Int = 0
let stringTest : Array = Array(String(test))
for i in 0..<stringTest.count {
    result += Int(String(stringTest[i]))!
}

print(result)
*/


