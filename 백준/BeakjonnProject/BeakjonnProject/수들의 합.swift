// 2022.05.03 Tue
// swift 코테 연습
// 백준
// 실버 5
// 수들의 합

import Foundation

func 수들의_합() {
  var num: Int = Int(readLine()!)!
  var index: Int = 1
  while num >= index {
    num -= index
    index += 1
  }
  
  print(index - 1)
}
