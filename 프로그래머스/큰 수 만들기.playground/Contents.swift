// 2021.02.21 SUN
// swift 코테 연습
// 프로그래머스
// Level 2
// 큰 수 만들기


import UIKit

// 예시로 내가 넣어둔 값들
var num = "99991"
var count = 3


var newNum = num.map{Int(String($0))!}
var result = [Int]()


for appendNum in newNum {
    if count <= 0 { result.append(appendNum) } // 더 이상 뺄 수 없을 때 남아있는 숫자들은 다 뒤에 넣어준다.
    else {
        if result.isEmpty { // 들어있는 숫자가 없을 때
            result.append(appendNum)
        }
        else { // 숫자가 있다면 ? 들어있는 마지막 숫자와 넣을 숫자를 비교한다. 넣을 숫자가 더 크다면 그 친구를 없애준다.
               // 이걸 count가 0이 되거나 result안에 값이 없기 전까지 반복한다.
            while result.last! < appendNum && count > 0 && result.isEmpty == false {
                count -= 1
                result.popLast()
                
                if result.isEmpty == true { // 값이 없다면 break를 통해 while문을 탈출해준다
                    break
                }
            }
            result.append(appendNum)
        }
    }
}

while count > 0 { // 코드를 다 돌았는데 count수가 남은 경우 count가 남은만큼 빼준다. //99991 같은 경우를 방지
    result.popLast()
    count -= 1
}

var resultresult = result.reduce(""){String($0)+String($1)} // string을 int로 합쳐서 내보내기
print(resultresult)
