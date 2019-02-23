//: Swift 4 grouping functions

import UIKit
import Foundation

// Closure Reference cycles

class HTMLElement {
    
    var name: String
    var text: String
    
    lazy var asHtml: () -> String = { [weak self] in
        guard let this = self else { return "" }
        return "<\(this.name)>\(this.text)</\(this.name)>"
    }
    
    init(name: String, text: String) {
        self.name = name
        self.text = text
    }
    
    deinit {
        print("HTMLElement \(name) is being deallocated")
    }
    
}

var paragraph: HTMLElement? = HTMLElement(name: "p", text: "Some sample paragraph body text")
paragraph?.asHtml()
paragraph = nil


// returning closures
func mlayu() -> (String, Int) -> Void {
    return { place, jeru in
        print("Mlayu nang \(place), jerune \(jeru) meter")
    }
}

let lapo = mlayu()
lapo("tambak", 10)


// closures with multiple parameters
func hitungLuas(x: Int, y: Int, luas: (Int, Int) -> Int) {
    let message = "Hasil perhitungan luas \(x) dengan \(y) = "
    let hasilPerhitungan = luas(x,y)
    print("\(message)\(hasilPerhitungan)")
}

hitungLuas(x: 4, y: 16) { $0 * $1 * $0 }

func travel(action: (String) -> String) {
    let destination = action("Madinah")
    print("Saya naik mobil, lalu \(destination)")
}

travel { "pergi ke kota \($0)" }

let mlaku = { (place: String) -> String in
    var aku = "Aku"
    let kamu = "Kamu"
    aku = kamu
    return "\(aku) mlaku - mlaku nang \(place)"
}

let message = mlaku("Mall")
print(message)

let dolan = { (place: String) in
    print("Aku dolan nang \(place)")
}

dolan("Jogja")

var driving = { (value: Int) -> Int in
    print("Joss \(value)")
    return value + 10
}

driving(10)


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

func traveling() -> (String) -> Void {
    var counter = 1
    return { place in
        print("\(counter). Saya traveling ke \(place)")
        counter += 1
    }
}

let lala = traveling()
for _ in 0..<5 {
    lala("Jogja")
}

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

