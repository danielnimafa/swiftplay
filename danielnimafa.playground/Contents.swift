//: Playground - noun: a place where people can play

import UIKit
import Foundation

// MARK: - Mutating Functions
//struct Fruit {
//    var type: String
//    var eaten: Bool
//
//    init(type: String) {
//        self.type = type
//        self.eaten = false
//    }
//
//    mutating func eat() {
//        eaten = true
//    }
//}
//
//let apple = Fruit(type: "Apple")
//apple.eat()
//
//var buah = Fruit(type: "Buah")
//buah.eat()
//print("Buat eaten: \(buah.eaten)")


struct Dog {
    var name: String
    var breed: String
    var age: Int
    var beenFed: Bool

    init(name: String, breed: String, age: Int) {
        self.name = name
        self.breed = breed
        self.age = age
        self.beenFed = false
    }
}

func feedDog(_ dog : inout Dog) {
    dog.beenFed = true
}


var milo = Dog(name: "Milo", breed: "Cihuahua", age: 3)
feedDog(&milo)
print("Milo beenfed: \(milo.beenFed)")

struct Category {

    private(set) public var title: String
    private(set) public var imageName: String

    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}

var category = Category(title: "Baju", imageName: "baju.png")
let namaBaju: String = category.title

var meg = Dog(name: "Meg", breed: "Beagle", age: 5)
meg.name = "Lucy"

// -------------------- Closure

//class Firebase {
//
//    func createUser(username: String, password: String, completion: (Bool, Int) -> Void) {
//        var isSuccess = true
//        var userID = 123
//
//        completion(isSuccess, userID)
//    }
//
//}
//
//class MyApp {
//
//    func registerButtonPressed() {
//
//        let firebase = Firebase()
//        firebase.createUser(username: "Bejo", password: "123456") {
//            (isSuccess: Bool, userID: Int) in
//
//        print("Registration is successful: \(isSuccess))")
//        print("userID is: \(userID)")
//
//        }
//
//    }
//
//    func completed(isSuccess: Bool, userID: Int) {
//
//        print("Registration is successful: \(isSuccess))")
//        print("userID is: \(userID)")
//
//    }
//
//}
//
//let myApp = MyApp()
//myApp.registerButtonPressed()


// -------------------- Array
//let array = [6,4,2,7,9,1]
//
//func addOne(n1: Int) -> Int {
//    return n1 + 1
//}
//
//print(array.map{$0 + 1})

//array.map({(n1: Int) -> Int in
//    return n1 + 1
//})

//array.map(addOne)

// -------------------- Fibonacci
// fibonacci 0,1,1,2,3,5,8

//func fibonacciFun(_ n : Int) {
//    var num1 = 0
//    var num2 = 1
//
//    var str = "\(num1), \(num2)"
//
//    for _ in 0...n {
//        let num = num1 + num2
//        if num % 2 == 0 {
//            str.append(", \(num)")
//        }
//
//        num1 = num2
//        num2 = num
//
//    }
//
//    print(str)
//}
//
//fibonacciFun(30)




//for number in 1...20 where number % 2 == 0 {
//    print(number)
//}

//func bearSong(_ totalNumberOfBottles : Int) -> String {
//
//    var lyric: String = ""
//
//    for number in (1...totalNumberOfBottles).reversed() {
//        let newLine = "\(number) bottles of beer on the wall, \(number) bottles of beer.\n Take one down and pass it around, \(number - 1) of beer on the wall.\n\n"
//        lyric += newLine
//    }
//
//    // lyric +=
//
//    return lyric
//
//}
//
//print(bearSong(13))






// -------------------- Array

//let arrayOfNumber = [12,7,1,3,9,16,19,21]
//
//var sum = 0
//
//for number in arrayOfNumber {
//    sum += number
//    print(sum)
//}
//
//print("Result of sum: \(sum)")










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
