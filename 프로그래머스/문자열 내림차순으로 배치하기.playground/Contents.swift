// 2020.12.16 Wed
// swift 코테 연습
// 프로그래머스
// Level 1
// 문자열 내림차순으로 배치하기

func solution(_ s:String) -> String {
    
    return String(s.sorted(by: >))
}

solution("Zbcdefg")
