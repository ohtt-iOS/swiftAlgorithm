// 2022.04.15 Fri
// swift 코테 연습
// 백준
// 실버 1
// 포도주 시식

import Foundation

func 포도주_시식() {
  var wines: [Int] = []
  let count: Int = Int(readLine()!)!
  (0..<count).forEach { _ in
    wines.append(Int(readLine()!)!)
  }

  var dp: [Int] = []
  (0..<count).forEach { index in
    if index == 0 {
      dp.append(wines[0])
    } else if index == 1 {
      dp.append(wines[0] + wines[1])
    } else if index == 2 {
      dp.append([(wines[0] + wines[1]), (wines[1] + wines[2]), (wines[0] + wines[2])].max()!)
    } else if index == 3 {
      dp.append(([(wines[0] + wines[2] + wines[3]), (wines[1] + wines[2]), (wines[0] + wines[1] + wines[3])]).max()!)
    } else {
      let firstCase = dp[index-3] + wines[index-1] + wines[index]
      let secondCase = dp[index-1]
      let thirdCase = dp[index-2] + wines[index]
      let max = [firstCase, secondCase, thirdCase].max()
      dp.append(max!)
    }
  }
  print(dp.last!)
}
