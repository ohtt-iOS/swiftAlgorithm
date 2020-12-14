// 2020.12.13 SUN
// swift 코테 연습
// 프로그래머스
// Level 2
// 조이스틱



import Foundation

func solution(_ name:String) -> Int {
    
    var result = 0 // 결과
    
    for i in name {
        var asci = i.asciiValue! - 65
        
        if asci > 13 { // 뒤에서 세는게 더 빠르면 뒤에서 세는 값으로 변경
            asci = 26 - asci
        }
        result += Int(asci)
    }
    
    // 이동하는 부분
    // 경우의 수 3가지
    // 1. 처음부터 쭉 오른쪽
    // 2. 처음부터 왼쪽
    // 3. 오른쪽으로 갔다가 왼쪽으로 돌아오기
    
    let array = Array(name)
    
    var count = name.count - 1
    
    for i in 0..<name.count {
        var index = i
        
        if (array[index] == "A") {
            while index < name.count && array[index] == "A" {
                index += 1
            }
            
            let moveCount = ((i-1)*2) + name.count - index
            count = min(moveCount,count)
            
        }
    }
    
    
    return result + count
}



solution("JEROEN") // 56
solution("JAN")
solution("CACAAC")
solution("BBBAAAB")
solution("BABAAAB") //9
solution("ABABAAAAABA") //11
