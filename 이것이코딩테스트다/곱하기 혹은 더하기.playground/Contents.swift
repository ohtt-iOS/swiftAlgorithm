// 2020.12.02 Wed
// swift 코테 연습
// 이것이 코딩테스트다
// Greedy : 탐욕법
// 문제 3번 - 곱하기 혹은 더하기

import UIKit


// 입력 조건 : 첫째 줄에 여러 개의 숫자로 구성된 하나의 문자열 S가 주어진다 ( 1 <= S의 길이 <= 20 )
// 출력 조건 : 첫째 줄에 만들어질 수 있는 가장 큰 수를 출력합니다.


/* 나의 생각
 0이 아니라면 곱하기를 하는 게 가장 큰 값이 나오지 않을까?
 
 => 1도 더해야함 ...
 
 */

var input: String = "03456"
var new: [Int] = []
for char in input {
    new.append(Int(String(char))!)
}
print(new)

// 과연 이런식으로 하는 게 맞는가 ....

var result = new[0]

for i in 1..<new.count {
    let num = new[i]
    if (num <= 1 || result <= 1) {
        result += num
    }
    else {
        result *= num
    }
}

print(result)
