// 2020.12.16 WED
// swift 코테 연습
// 이것이 코딩테스트다
// 이진탐색

import Foundation

func binarySearch(_ array: [Int], num: Int) -> Int? {
    var start = 0
    var end = array.count - 1
    
    while start <= end {
        let mid = (start + end) / 2
        let guess = array[mid]
        if guess == num {
            return mid
        } else if guess > num {
            end = mid - 1
        } else {
            start = mid + 1
        }
    }
    return nil
}


var myArray = [3,4,2,5,1,7,9,4,2]
myArray.sort(by: <)

binarySearch(myArray, num: 3)
