// 2021.01.30 SAT
// swift 코테 연습
// 프로그래머스
// Level 2
// 순위 검색


import UIKit

// 효율성 통과 xxx

var info = ["java backend junior pizza 150","python frontend senior chicken 210","python frontend senior chicken 150","cpp backend senior pizza 260","java backend junior chicken 80","python backend senior chicken 50"]
var query = ["java and backend and junior and pizza 100","python and frontend and senior and chicken 200","cpp and - and senior and pizza 250","- and backend and senior and - 150","- and - and - and chicken 100","- and - and - and - 150"]

var result: [Int] = [Int](repeating: 0, count: query.count)



struct Infos {
    let informations: String?
    let score: Int?
}

var newInfo: [Infos] = []

for i in info {
    let mymyInfo = i.components(separatedBy: " ")
    newInfo.append(Infos(informations: mymyInfo[0] + mymyInfo[1] + mymyInfo[2] + mymyInfo[3], score: Int(mymyInfo[4])))
}

print(newInfo[0])

for i in 0..<query.count {
    var newQuery = query[i].components(separatedBy: " ")
    newQuery.removeAll(where: {$0 == "-" || $0 == "and"})
    let number = newQuery.popLast()!
    print(newQuery)
    print(number)
    for j in 0..<newInfo.count {
        if Int(number)! <= newInfo[j].score! {
            if newQuery.count == 0 {
                result[i] += 1
            }
            else {
                for k in 0..<newQuery.count {
                    if newInfo[j].informations!.contains(newQuery[k]) {
                        if k == newQuery.count - 1 {
                            result[i] += 1
                        }
                    }
                    else { break }
                }
                
            }
        }
        
    }
}

print(result)

// 푸는중

