// 2021.02.20 Sat
// swift 코테 연습
// 백준
// 실버 5
// 달팽이

import Foundation

let n = Int(readLine()!)!
let m = Int(readLine()!)!
var startNum = n*n
var snailArray: [[Int]] = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)
let lastNum = n-1
var nowState = "DOWN"
var nowX = 0
var nowY = 0

// 달팽이 표 그리기
while startNum != 0 {
    snailArray[nowY][nowX] = startNum
    switch nowState {
    case "DOWN":
        if nowY == lastNum || snailArray[nowY+1][nowX] != 0 {
            nowState = "RIGHT"
            nowX += 1
        }
        else {
            nowY += 1
        }
        
    case "RIGHT":
        if nowX == lastNum || snailArray[nowY][nowX+1] != 0 {
            nowState = "UP"
            nowY -= 1
        }
        else {
            nowX += 1
        }
  
    case "UP":
        if nowY == 0 || snailArray[nowY-1][nowX] != 0{
            nowState = "LEFT"
            nowX -= 1
        }
        else {
            nowY -= 1
        }
    case "LEFT":
        if nowX == 0 || snailArray[nowY][nowX-1] != 0{
            nowState = "DOWN"
            nowY += 1
        }
        else {
            nowX -= 1
        }
    default:
        0
    }
    startNum -= 1
}


for y in 0..<n {
    for x in 0..<n {
        print(snailArray[y][x], terminator:" ")
        if snailArray[y][x] == m {
            nowY = y
            nowX = x
        }
    }
    print("")
}

print("\(nowY+1) \(nowX+1)")



