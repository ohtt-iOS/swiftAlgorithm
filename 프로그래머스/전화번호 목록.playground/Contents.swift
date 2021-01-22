// 2021.01.23 SAT
// swift 코테 연습
// 프로그래머스
// Level 2
// 전화번호 목록

import UIKit

func solution(phone_book: [String]) -> Bool{
    var mybook = phone_book
    mybook.sort{$0.count < $1.count}
    
    for i in 0..<mybook.count {
        for k in i+1..<mybook.count {
            if mybook[k].hasPrefix(mybook[i]) {
                return false
            }
        }
    }
    return true
}
