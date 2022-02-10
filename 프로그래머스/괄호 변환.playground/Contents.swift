// 2022.02.10 THU
// swift 코테 연습
// 프로그래머스
// Level 2
// 괄호변환

import Foundation

func solution(_ p: String) -> String {
  if p == "" { return "" }
  let (u, v) = seperateString(p)
  return checkCorrectString(u) ? (u + solution(v)) : (changeToCorrectString((u, v)))
}

func checkCorrectString(_ p: String) -> Bool {
  return p.last! == "(" ? false : true
}

func changeToCorrectString(_ tuple: (String, String)) -> String {
  let (u, v) = tuple
  let result = "(" + solution(v) + ")"
  
  let arrU = Array(u)
  var reversedU: String = ""
  for num in 0..<arrU.count {
    if !(num == 0 || num == arrU.count - 1) {
      arrU[num] == "(" ? ( reversedU += ")" ) : (reversedU += "(" )
    }
  }
  return result + reversedU
}

func seperateString(_ p: String) -> (String, String) {
  var countRight: Int = 0
  var countLeft: Int = 0
  let arr = Array(p)
  var sliceIndex = 0
  
  for (index, char) in arr.enumerated() {
    char == ")" ? (countRight += 1) : (countLeft += 1)
    if countRight == countLeft {
      sliceIndex = index
      break
    }
  }
  
  let u = arr[0...sliceIndex].map { String($0) }.joined(separator: "")
  let v = arr[sliceIndex+1..<arr.count].map { String($0) }.joined(separator: "")
  
  return (u, v)
}

print(solution("(()())()"))
print(solution(")("))
print(solution("()))((()"))
