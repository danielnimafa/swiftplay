//: Swift 4 grouping functions

import UIKit
import Foundation

func filterGreaterThanValue(value: Int, numbers: [Int]) -> [Int] {
    var filteredSetOfNumber = [Int]()
    for num in numbers {
        if num > value {
            filteredSetOfNumber.append(num)
        }
    }
    return filteredSetOfNumber
}

//let filteredList = filterGreaterThanValue(value: 5, numbers: [1,2,3,4,5,7,10,20])
//print(filteredList)

func filterWithPredicate(closure: (Int) -> Bool, numbers: [Int]) -> [Int] {
    var filteredNumber = [Int]()
    for num in numbers {
        if closure(num) {
            filteredNumber.append(num)
        }
    }
    return filteredNumber
}

let filteredNums = filterWithPredicate(closure: { (num) -> Bool in
    return num > 2
}, numbers: [1,2,3,4,5,7,10,20])
print(filteredNums)



print("\n----------------Trailing closures----------------\n")

let digitNumbers = [0: "Zero", 1: "One", 2: "Two", 3: "Three", 4: "Four", 5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"]
let numbers = [16, 25, 510]

let strings = numbers.map { num -> String in
    
    var number = num
    var output = ""
    
    repeat {
        output = digitNumbers[number % 10]! + output
        number /= 10
    } while number > 0
    
    return output
}

print(strings)



print("\n----------------Capturing Values----------------\n")

func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    
    return incrementer
}

let result = makeIncrementer(forIncrement: 3)
print("Incrementer: \(result())")
print("Incrementer: \(result())")
print("Incrementer: \(result())")
print("Incrementer: \(result())")
print("Incrementer: \(result())")



print("\n----------------Escaping closures----------------\n")

var completionHandlers: [() -> Void] = []
func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
    completionHandlers.append(completionHandler)
}

func someFunctionWithNonescapingClosure(closure: () -> Void) {
    closure()
}

class SomeClass {
    
    var x = 10
    
    func doSomething() {
        someFunctionWithEscapingClosure { self.x = 100 }
        someFunctionWithNonescapingClosure { x = 200 }
    }
}

let instance = SomeClass()
instance.doSomething()
print(instance.x)

completionHandlers.first?()
print(instance.x)

