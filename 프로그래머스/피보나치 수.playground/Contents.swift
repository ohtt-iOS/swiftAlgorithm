// 2021.01.27 MON
// swift 코테 연습
// 프로그래머스
// Level 2
// 피보나치 수

import UIKit

let n = 5

var nowNum = 1
var beforeNum = 0

// 다시 풀었다!

for i in 1..<n {
    let newNum = ((beforeNum % 1234567) + (nowNum % 1234567)) % 1234567
    beforeNum = nowNum % 1234567
    nowNum = newNum % 1234567
}


// 시간초과

/*
 for i in 1..<n {
 let newNum = nowNum + beforeNum
 beforeNum = nowNum
 nowNum = newNum
 print(" i : \(newNum)")
 }
 */
