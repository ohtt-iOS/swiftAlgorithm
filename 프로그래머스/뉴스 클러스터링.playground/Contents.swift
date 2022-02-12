// 2022.02.12 Sat
// swift 코테 연습
// level 2 : 뉴스 클러스터링

import Foundation

func solution(_ str1: String, _ str2: String) -> Int {
  let arr1 = makeArray(str: str1)
  let arr2 = makeArray(str: str2)
  
  if arr1.count == 0 && arr2.count == 0 {
    return 65536
  } else {
  let (union, intersection) = unionAndIntersection(arr1, arr2)
    let jacad: Double = Double(union) / Double(intersection)
    return Int( jacad * 65536 )
  }
}

func makeArray(str: String) -> [String] {
  var arr: [String] = []
  for index in 2...str.count {
    let firstIndex = str.index(str.startIndex, offsetBy: index - 2)
    let endIndex = str.index(str.startIndex, offsetBy: index - 1)
    if str[firstIndex].isLetter && str[endIndex].isLetter {
      arr.append(String(str[firstIndex...endIndex]).uppercased())
    }
  }
  return arr
}

func unionAndIntersection(_ arr1: [String], _ arr2: [String]) -> (Int, Int) {
  var union: [String] = []
  var tempArr2: [String : Int] = [:]
  
  arr2.forEach {
    if tempArr2[$0] == nil {
      tempArr2[$0] = 1
    } else {
      tempArr2[$0]! += 1
    }
  }
  
  arr1.forEach {
    if arr2.contains($0) {
      if tempArr2[$0] != nil && tempArr2[$0] != 0 {
        union.append($0)
        tempArr2[$0]! -= 1
      }
    }
  }
  return (union.count, arr1.count + arr2.count -  union.count)
}
