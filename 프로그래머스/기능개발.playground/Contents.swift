// 2020.12.12 SAT
// swift 코테 연습
// 프로그래머스
// Level 2
// 기능 개발

// 우선 구현해보고 생각 ? ^-^


import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var progress = progresses
    var index = 0
    var count = [Int]()
    var countNum = 0
    
    while true {
        for i in index..<progresses.count {
            progress[i] += speeds[i]
        }
        if progress[index] >= 100 {
           
            while progress[index] >= 100 {
                if (index == progress.count-1) && (progress[index] >= 100) {
                    countNum += 1
                    count.append(countNum)
                    return count
                }
                countNum += 1
                index += 1
            }
            count.append(countNum)
            print(count)
            countNum = 0
        }
    }
    return count
    
}


//solution([93,30,55], [1,30,5]) //[2,1]
solution([95, 90, 99, 99, 80, 99], [1, 1, 1, 1, 1, 1]) //[1, 3, 2]
