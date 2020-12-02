import UIKit

// Python: [ x for x in range(10) if x % 2 == 0 ]
let evens = (0..<10).filter { $0 % 2 == 0 }
// Python: [ x*x for x in range(10) if x % 2 == 0 ]
let evenSquared = (0..<10).filter({ $0 % 2 == 0 }).map({ $0 * $0 })


print(evens)
print(evenSquared)

//메모리 관리 차원에서 lazy를 사용해주는 것이 좋다.
//let evens = (0..<10).lazy.filter { $0 % 2 == 0 }
//let evenSquared = (0..<10).lazy.filter({ $0 % 2 == 0 }).map({ $0 * $0 })

var eveneven :[Int] = []
let evenStride = stride(from: 0,to: 10, by: 2)
for i in evenStride {
    eveneven.append(i)
}
//let evenevne = Array(evenStride)
print(eveneven)
 
