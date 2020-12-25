// 2020.09.05 SAT
// swift 코테 연습
// level 1 : 행렬의 덧셈

import UIKit

var arr1 : [[Int]] = [[1,2],[2,3],[4,7]]
var arr2 : [[Int]] = [[3,4],[5,6],[5,3]]

var arr3 = arr1

let row = arr1.count
let column = arr1[0].count

for i in 0..<row {
    for k in 0..<column {
        arr3[i][k] += arr2[i][k]
    }
}

print(arr3)

// 제출한 코드
/*
 func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
   
     let row = arr1.count
     let column = arr1[0].count
     var arr3 = arr1

     for i in 0..<row {
         for k in 0..<column {
             arr3[i][k] += arr2[i][k]
         }
     }
         
     return arr3
 }
 
 
 */
