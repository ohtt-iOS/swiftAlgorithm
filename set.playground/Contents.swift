// 2020.08.29 Sat
// swift 연습
// Set에 관하여
// Array와 비교하기


import UIKit
/*
var testSet : Set<String> = ["What","is","Set"]
var testSet2 : Set<Int> = [1,2,3,3,4,5]
var testSet3 = [1,2,3,3,4,5]

print(testSet2)
print(testSet3)

testSet2.insert(5)
testSet3.insert(5, at: testSet3.endIndex)

print(testSet2)
print(testSet3)

print(" -- ")
 */


var a : Set = [1,2,6,5,7]
var b : Set = [4,3,2,6,9]

print(a.intersection(b)) //교집합
print(a.symmetricDifference(b)) //합집합 - 교집합
print(a.union(b)) //합집합
print(a.subtracting(b)) //차집합

