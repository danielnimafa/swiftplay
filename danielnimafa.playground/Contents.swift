//: Playground - noun: a place where people can play

import UIKit
import Foundation

// ------------------------------ Initializers

struct User {
    var username: String
    
    init() {
        username = "Anonymous"
        print("Creating new User!!!")
    }
    
    mutating func updateUsername(uname: String) {
        self.username = uname
    }
}

var user = User()
user.updateUsername(uname: "danielnimafa")
print(user.username)

// ------------------------------ Properties and methods of arrays

var toys = ["Woody"]

print(toys.count)
toys.append("Buzz")
print(toys.index(of: "Buzz")!)
print(toys.sorted())
toys.remove(at: 0)



// ------------------------------ Properties and methods of strings

let string = "Do or do not, there is no try."

print(string.count)
print(string.hasPrefix("Do"))
print(string.uppercased())
print(string.sorted())


// ------------------------------ Mutating Methods

struct Person {
    var name: String
    
    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

var person = Person(name: "Joko")
person.makeAnonymous()
print(person.name)


// ------------------------------ Methods

struct City {
    var population: Int
    
    func collectTaxes() -> Int {
        return population * 1000
    }
}

let london = City(population: 9_000_000)
let taxes = london.collectTaxes()
print(taxes)

// ------------------------- Property observer

struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100
