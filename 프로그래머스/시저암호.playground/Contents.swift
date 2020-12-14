// 2020.12.14 MON
// swift 코테 연습
// 프로그래머스
// Level 1
// 시저 암호

import Foundation

func solution(_ s:String, _ n:Int) -> String {
    var result = ""
    
    for i in s {
        
        var unicode = (i.asciiValue!)
        
        if i == " " {
            result += " "
        }
        
        else {
            if unicode >= 65 && unicode <= 90 {
                if unicode + UInt8(n) > 90 {
                    unicode -= 26
                }
            }
            else {
                if unicode + UInt8(n) > 122 {
                    unicode -= 26
                }
            }
            result += String(UnicodeScalar((unicode) + UInt8(n)))
        }
        
    }
    return result
}

solution("ABZ",1) // "BC"
solution("z", 1) //"a"
solution("a B z", 4) // "e F d"
solution("AaXyYZz", 3)
