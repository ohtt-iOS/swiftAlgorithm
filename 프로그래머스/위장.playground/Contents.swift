// 2021.01.22 FRI
// swift 코테 연습
// 프로그래머스
// Level 2
// 위장

import UIKit

let clothes = [["yellow_hat", "headgear"], ["blue_sunglasses", "eyewear"], ["green_turban", "headgear"]]
var category: [String: Int] = [:]

for i in clothes {
    if category[i[1]] == nil {
        category[i[1]] = 1
    }
    else {
        category[i[1]]! += 1
    }
}

print(category)
