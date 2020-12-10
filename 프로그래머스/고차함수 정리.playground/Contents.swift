// 2020.09.03 THU
// swift 문법 연습
// 고차함수 map, filter, reduce 정리하기


import UIKit


let numbers : [Int] = [0,1,2,3,4]
var doubledNumbers : [Int] = [Int]()
var doubledNumbersMap : [Int] = [Int]()

//for 사용
for number in numbers {
    doubledNumbers.append(number*2)
}

// map 사용
/*doubledNumbersMap = numbers.map({(number:Int) -> Int in
    return number * 2
})*/

//간략화
doubledNumbersMap = numbers.map{$0 * 2}
print(doubledNumbersMap)

/*

let numbers2 : [Int] = [0,1,2,3,4,5]
//filter 사용
/*
 let evenNumbers : [Int] = numbers2.filter{(number: Int) -> Bool in
    return number % 2 == 0
}
 */

//간략화
let oddNumbers : [Int] = numbers2.filter{$0 % 2 == 1}
print(oddNumbers)



let numbers3 : [Int] = [0,1,2,3,4,5]

//reduce 사용
/*
 var sum: Int = numbers3.reduce(0,{(result: Int, next: Int) -> Int in
    return result + next
})
*/

//간략화
var sum: Int = numbers3.reduce(0, {$0 + $1})

print(sum)
*/
