// 2020.09.05 SAT
// swift 코테 연습
// level 1 : 가운데숫자가져오기

import UIKit

var s = "345839"

func solution(_ s:String) -> String {
    let startIndex: String.Index = s.index(s.startIndex, offsetBy: s.count/2 - (s.count%2 == 0 ? 1 : 0))
    let endIndex: String.Index = s.index(s.startIndex,offsetBy: s.count/2 + 1)
    
    return String(s[startIndex..<endIndex])
}

print(solution(s))
