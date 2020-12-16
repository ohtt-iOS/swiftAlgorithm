// 2020.12.16 Wed
// swift 코테 연습
// 프로그래머스
// Level 1
// 다트 게임

import Foundation

func solution(_ dartResult:String) -> Int {
    var result = 0
    var game = [Int]()
    var score = [Int]()
    var minus = 0
    for i in dartResult {
        if let a = Int(String(i)) {
            num.append(a)
        } else {
            switch i {
            case "S":
                score.append(game.last!)
            case "D":
                score.append(game.last! * game.last!)
            case "T":
                score.append(game.last! * game.last! * game.last!)
            case "*":
                
            default:
                <#code#>
            }
        }
    }

    return result
}

solution("1S2D*3T") // 37
