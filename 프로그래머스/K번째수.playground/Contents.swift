// 2020.12.14 MON
// swift 코테 연습
// 프로그래머스
// Level 1
// K번째수

import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result = [Int]()
    
    for i in 0..<commands.count {
        var myArray = Array(array[commands[i][0]-1..<commands[i][1]])
        myArray.sort()
        result.append(myArray[commands[i][2]-1])
        
    }
    
    return result
}


solution([1, 5, 2, 6, 3, 7, 4], [[2, 5, 3], [4, 4, 1], [1, 7, 3]])


func solution2(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    return commands.map{
        
        let i = $0[0]-1
        let j = $0[1]-1
        let k = $0[2]-1
        
        return array[i...j].sorted()[k] }
    
}
