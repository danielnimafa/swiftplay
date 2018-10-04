//: Playground - noun: a place where people can play

import UIKit
import Foundation


// MARK: - Mutating Functions
struct Fruit {
    var type: String
    var eaten: Bool

    init(type: String) {
        self.type = type
        self.eaten = false
    }

    mutating func eat() {
        eaten = true
    }
}

let apple = Fruit(type: "Apple")
apple.eat()

var buah = Fruit(type: "Buah")
buah.eat()
print("Buat eaten: \(buah.eaten)")


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

//// -------------------- Calculate BMI
//
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
