// 2020.12.13 SUN
// swift 코테 연습
// 이것이 코딩테스트다
// 계수 정렬 연습

import Foundation


func countingsort(_ array:[Int]) -> [Int] {
    
    let maxElement = array.max() ?? 0
    
    var countArray = [Int](repeating: 0, count: Int(maxElement + 1))
    for element in array {
        countArray[element] += 1
    }
    
    for index in 1 ..< countArray.count {
        let sum = countArray[index] + countArray[index - 1]
        countArray[index] = sum
    }
    
    var sortedArray = [Int](repeating: 0, count: array.count)
    for index in stride(from: array.count - 1, through: 0, by: -1) {
        let element = array[index]
        countArray[element] -= 1
        sortedArray[countArray[element]] = element
    }
    
    return sortedArray
}

countingsort([ 10, 9, 8, 7, 1, 2, 7, 3 ])
