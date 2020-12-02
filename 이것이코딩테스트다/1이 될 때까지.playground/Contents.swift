// 2020.12.02 Wed
// swift 코테 연습
// 이것이 코딩테스트다
// Greedy : 탐욕법
// 문제 2번 - 1이 될 때까지


/*
 내가 처음 생각했던 알고리즘
 1. k로 나누어 떨어지면 나누고 아니면 뺀다
 2. 그 과정을 반복한다.
 
 why?
 1에 가까워지는 속도는 나누기가 빠름.
 나눌 수 있을 때 나누는 것이 가장 좋은 방법이라고 생각했다.
 
 => 정답 !!!
 */


import UIKit

var n: Int = 17
let k: Int = 4
var count: Int = 0

while(n != 1) {
    if n % k == 0 {
        n /= k
    }
    else {
        n -= 1
    }
    count += 1
}


print(count)
