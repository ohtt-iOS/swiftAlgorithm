// 2020.12.13 SUN
// swift 코테 연습
// 이것이 코딩테스트다
// 정렬 연습

import Foundation

// 선택 정렬 - O(N^2)

func selectionSort(_ array: [Int]) -> [Int] {
  guard array.count > 1 else { return array }

  var a = array

  for x in 0 ..< a.count - 1 {

    var lowest = x
    for y in x + 1 ..< a.count {
      if a[y] < a[lowest] {
        lowest = y
      }
    }

    if x != lowest {
      a.swapAt(x, lowest)
    }
  }
  return a
}

// 삽입 정렬 - O(N^2) // 최적일 때 O(N)

func insertionSort(_ array: [Int]) -> [Int] {
    var sortedArray = array
    for index in 1..<sortedArray.count {
        var currentIndex = index
        while currentIndex > 0 && sortedArray[currentIndex] < sortedArray[currentIndex - 1] {
            sortedArray.swapAt(currentIndex - 1, currentIndex)
            currentIndex -= 1
        }
    }
    return sortedArray
}

