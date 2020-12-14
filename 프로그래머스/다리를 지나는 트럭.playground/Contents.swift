// 2020.12.13 SUN
// swift 코테 연습
// 프로그래머스
// Level 2
// 다리를 지나는 트럭

import Foundation

func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    var timeCheck = [Int](repeating: 0, count: truck_weights.count)
    var result = 1
    var nowFirst = 0
    var nowLast = 0
    var nowInBridge = truck_weights[0]
    
    
    while true {
        if (nowLast == truck_weights.count-1) { // 마지막 트럭이 올라가면 while 문 탈출
            break
        }
        
        result += 1 // 시간의 흐름
        
        for i in nowFirst...nowLast { // 올라가 있는 트럭들 시간 올려주기
             timeCheck[i] += 1
        }
        if timeCheck[nowFirst] >= bridge_length {  // 일정 시간이 지나면 통과처리
            nowInBridge -= truck_weights[nowFirst]
            nowFirst += 1
            
        }
        if nowInBridge + truck_weights[nowLast+1] <= weight { // 그 다음 트럭이 들어올 상황이면 넣어준다
            nowLast += 1
            nowInBridge += truck_weights[nowLast]
        }
    }
    result += bridge_length // 마지막 트럭에 대한 시간 경과 처리
    
    
    return result
}

solution(2, 10, [7,4,5,6]) // 8
