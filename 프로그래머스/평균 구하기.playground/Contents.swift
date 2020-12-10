// 2020.09.03 THU
// swift 코테 연습
// level 1 : 평균 구하기


//reduce 메서드 이용

import UIKit

func solution(_ arr:[Int]) -> Double {
   
    return Double(arr.reduce(0,{$0+$1}))/Double(arr.count)
}

print(solution([1,2,3,4]))
