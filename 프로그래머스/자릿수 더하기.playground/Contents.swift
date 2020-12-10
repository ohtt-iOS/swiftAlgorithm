// 2020.09.03 THU
// swift 코테 연습
// level 1 : 자릿수 더하기

import UIKit

func solution(_ n:Int) -> Int
{
    var answer : Int = 0
    /*for i in String(n) {
        answer += Int(String(i))!
    }*/
    //reduce 활용해보기
    
    answer = String(n).reduce(0,{$0+Int(String($1))!})
 
    return answer
}
print(solution(345))

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


