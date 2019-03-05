//: Playground - noun: a place where people can play

import UIKit
import Foundation


// -------------------- Deinitializers
// The fourth difference between classes and structs is tha

class Person {
    var name = "John Doe"
    
    init() {
        print("\(name) is alive!")
    }
    
    deinit {
        print("\(name) is no more!")
    }
    
    func printGreeting() {
        print("Hello, I'm \(name)")
    }
}

for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}
