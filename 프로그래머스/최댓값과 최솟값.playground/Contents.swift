// 2021.01.29 FRI
// swift 코테 연습
// 프로그래머스
// Level 2
// 최댓값과 최솟값


import UIKit

var s = "1 2 3 4"
var arr = s.components(separatedBy: " ")
var arrNum = arr.map{Int($0)!}

arrNum.sort()

print("\(arrNum.first!) \(arrNum.last!)")
