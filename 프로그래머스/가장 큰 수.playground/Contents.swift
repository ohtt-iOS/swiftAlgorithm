import Foundation

func compare(_ a: String,_ b: String) -> Bool {
    return a+b > b+a
}

func solution(_ numbers:[Int]) -> String {
    var result = ""
    
    var stringNum = numbers.map{String($0)}
    stringNum.sort(by:compare(_:_:))
    
    for i in stringNum {
        result += i
    }
    
    if result.hasPrefix("0") { return "0" }
    
    return result
}

print(solution([0,0,0,0,0]))
