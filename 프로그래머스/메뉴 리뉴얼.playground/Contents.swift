import UIKit

var myString = "ABCEG"
let mynewString = Array(myString)
var newComb = [String]()
var count = [2,3,4]


func combination(_ myString: [String.Element],_ k: Int) -> [[String.Element]]{
    var myNewString = myString
    
    if k == 0 {
        return [[]]
    }
    
    guard let first = myString.first else {
        return []
    }
    
    let head = [first]
    myNewString.removeFirst()
    let subcomb = combination(myNewString, k-1)
    var new = subcomb.map{ head + $0 }
    new += combination(myNewString, k)
    
    return new
}

for i in 0..<myString.count {
    let icomb = combination(mynewString, i)
    for i in icomb {
        let a = i.reduce(""){String($0)+String($1)}
        if count.contains(a.count) {
            newComb.append(a)
        }
    }
}
print(newComb)
