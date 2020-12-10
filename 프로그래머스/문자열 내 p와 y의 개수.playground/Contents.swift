// 2020.12.09 Wed
// swift 코테 연습
// 프로그래머스
// Level 1
// 문자열 내 p와 y의 개수

import Foundation

func solution(_ s:String) -> Bool
{
    var ans:Bool = false
    let myString = s.lowercased()
    
    var pCount = 0
    var yCount = 0
    
    for i in myString {
        if ( i == "p") {
            pCount += 1
            continue
        }
        if (i == "y") {
            yCount += 1
        }
    }
    
    ans = pCount == yCount

    return ans
}

func solution2(_ s:String) -> Bool
{
    let string = s.lowercased()
    return string.components(separatedBy: "p").count == string.components(separatedBy: "y").count
}

print(solution("pPoooyY"))


