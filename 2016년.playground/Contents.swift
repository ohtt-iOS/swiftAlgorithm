// 2020.08.31 Mon
// swift 코테 연습
// level 1 : 2016년

import UIKit

func solution(_ a:Int, _ b:Int) -> String {
    let day = ["THU","FRI","SAT","SUN","MON","TUE","WED"]
    let date = [0,31,29,31,30,31,30,31,31,30,31,30,31]
    var sum : Int = 0
    
    for i in 0..<a {
        sum += date[i]
    }
    sum += b
    return day[sum%7]
}

print(solution(5,24))
