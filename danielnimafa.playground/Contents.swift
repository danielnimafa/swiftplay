//: Playground - noun: a place where people can play

import UIKit
import Foundation

func numberOfTims(in array: [String]) -> Int {
    var count = 0
    for name in array {
        if name == "Tim" {
            count += 1
        }
    }
    return count
}



print("--------------------- inout parameters  ---------------------")

func doubleInPlace(number: inout Int) {
    number *= 2
}

var myNum = 10
doubleInPlace(number: &myNum)
print(myNum)


print("--------------------- writing Throwing Functions  ---------------------")


enum LoginError: Error {
    case unknownUser
}

func authenticate(username: String) throws {
    if username == "Anonymous" {
        throw LoginError.unknownUser
    }
    
    print("Welcome, \(username)!")
}

do {
    try authenticate(username: "Anonymous")
} catch {
    print("Error: \(error)")
    switch error {
    case LoginError.unknownUser:
        print("Unknown User!!!")
    default:
        print("JOsss")
    }
}

enum CatProblems: Error {
    case notACat
    case unfriendly
}
func strokeCat(_ name: String) throws {
    if name == "Mr Bitey" {
        throw CatProblems.unfriendly
    } else if name == "Lassie" {
        throw CatProblems.notACat
    } else {
        print("You stroked \(name).")
    }
}

do {
    try strokeCat("Lassie")
} catch let err {
    print("Error: \(err.localizedDescription)")
}

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    
    return true
}

let pass = "password"
do {
    try checkPassword(pass)
} catch let err {
    print("Error: \(err)")
}




print("--------------------- Variadic Functions ---------------------")

func square(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

square(numbers: 2,4,5,6,3,1)



let intArray = [2,5,7,3,4,29,56,72,34,55,333]
let stringArray = ["a", "b", "c", "d", "e", "f", "g", "h", "i"]

func findIndexOfArray<T: Comparable> (array: [T], key: T) -> Int? {
    for (index, element) in array.enumerated() {
        if element == key {
            return index
        }
    }
    
    return nil
}

findIndexOfArray(array: intArray, key: 55)
findIndexOfArray(array: stringArray, key: "g")

// -------------------- Calculate BMI

//func calculateBMI(weight: Double, height: Double) -> Double {
//    //let bmi = weight / (height * height)
//    let bmi = weight / pow(height, 2)
//
//    if bmi > 25 {
//        print("You are overweight")
//    } else if bmi > 18.5 && bmi < 25 {
//        print("You have a normal weight")
//    } else if bmi < 18.5 {
//        print("You are underweight")
//    }
//
//    return bmi
//}
//
//var bmiResult = calculateBMI(weight: 70, height: 1.63)
