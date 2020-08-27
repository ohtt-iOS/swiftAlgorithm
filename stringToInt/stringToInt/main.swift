//
//  main.swift
//  stringToInt
//
//  Created by soyounglee on 2020/08/27.
//  Copyright © 2020 soyounglee. All rights reserved.
//

// String to Int 하는 프로젝트

import Foundation

let s : String = readLine() ?? "0"

func solution(_ s:String) -> Int {
    let stringToInt = Int(s) ?? 0
    return stringToInt
}

print(solution(s))

