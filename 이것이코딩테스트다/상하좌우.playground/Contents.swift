// 2020.12.03 Thu
// swift 코테 연습
// 이것이 코딩테스트다
// 구현
// 문제 1번 - 상하좌우

import Foundation

// 내 풀이
/*
var start = [1,1]
let n = 5
let direction = ["R","R","R","U","D","D"]

for i in direction {
    switch i {
    case "U":
        if start[0] > 1 {
            start[0] -= 1
        }
    case "D":
        if start[0] < n {
            start[0] += 1
        }
    case "L":
        if start[1] > 1 {
            start[1] -= 1
        }
    case "R":
        if start[1] < n {
            start[1] += 1
        }

    default:
        0
    }
}
print(start)

*/

// 동빈님 풀이

var nowX: Int = 1
var nowY: Int = 1
var nx: Int = 1
var ny: Int = 1
let n = 5
let direction = ["R","R","R","U","D","D"]

let dx: [Int] = [0, 0, -1, 1]
let dy: [Int] = [-1, 1, 0, 0]
let moveType = ["L","R","U","D"]

for direct in direction {
    for i in 0..<moveType.count {
        if moveType[i] == direct {
            nx = nowX + dx[i]
            ny = nowY + dy[i]
        }
    }
    // 범위를 넘어가면 좌표 입력을 해주지 않는다.
    if nx < 1 || ny < 1 || nx > n || ny > n {
        continue
    }
    nowX = nx
    nowY = ny
}

print (nowX,nowY)
