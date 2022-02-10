// 2021.01.28 THU
// swift 코테 연습
// 프로그래머스
// Level 2
// 스킬트리

import UIKit

var skill_trees = ["BACDE", "CBADF", "AECB", "BDA"]
var skill = "CBD"
var count = 0

for i in skill_trees {
    var skillCheck = ""
    // 스킬트리들 안에 skill에 들어있는 알파벳이 있으면 skillCheck에 담는다.
    for k in i {
        if skill.contains(k) {
            skillCheck += String(k)
        }
    }
    
    // skillCheck안에 담긴 길이만큼 skill을 잘라낸다
    let range = skill.index(skill.startIndex, offsetBy: skillCheck.count)
    
    // 만약에 잘라낸 skill과 skillCheck가 일치한다면
    // 순서가 맞게 스킬을 배웠다고 생각할 수 있다.
    if skill[..<range] == skillCheck {
        count += 1
    }
}

