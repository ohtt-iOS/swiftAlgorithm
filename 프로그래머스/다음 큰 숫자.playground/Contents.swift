// 2022.02.10 THU
// swift 코테 연습
// 프로그래머스
// Level 2
// 다음 큰 숫자

import Foundation

func solution(_ n: Int) -> Int {
  let oneCountOfOriginNum = numberOneCounter(num: n)
  var number = n + 1
  while(true) {
    if numberOneCounter(num: number) == oneCountOfOriginNum {
      return number
    } else {
      number += 1
    }
  }
}

func numberOneCounter(num: Int) -> Int {
  let binary = Array(String(num, radix: 2))
  var count = 0
  for num in 0..<binary.count {
    if binary[num] == "1" {
      count += 1
    }
  }
  return count
}
