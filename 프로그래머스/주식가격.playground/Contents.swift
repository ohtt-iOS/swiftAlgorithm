// 2020.12.25 FRI
// swift 코테 연습
// 프로그래머스
// Level 2
// 주식가격

import UIKit

func solution(_ prices: [Int]) -> [Int] {
    var result = [Int]()
    
    for i in 0..<prices.count {
        var know = false
        for j in i..<prices.count {
            if prices[i] > prices[j] {
                let num = j - i
                result.append(num)
                know = true
                break
            }
        }
        if !know {
            result.append(prices.count - i - 1)
        }
    }

    return result
}


solution([1,2,3,2,3]) // [4,3,1,1,0]
