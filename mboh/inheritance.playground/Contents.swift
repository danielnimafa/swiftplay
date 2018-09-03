//: Playground - noun: a place where people can play

import UIKit

class Vehicle {
    var tires = 4
    var make: String?
    var model: String?
    var currentSpeed: Double = 0
    
    init() {
        print("I am the parent")
    }
    
    func drive(speedIncrease: Double) {
        currentSpeed += speedIncrease * 2
    }
    
    func brake() {
        
    }
}

class Truck: Vehicle {
    override init() {
        super.init()
    }
    
    override func drive(speedIncrease: Double) {
        currentSpeed += speedIncrease
        print("This truck's speed is", currentSpeed)
    }
}

class SportsCar: Vehicle {
    
    override init() {
        super.init()
        print("i am the child")
        make = "BMW"
        model = "3 series"        
    }
    
    override func drive(speedIncrease: Double) {
        currentSpeed += speedIncrease * 3
        print("current speed of ", make!," is", currentSpeed)
    }
    
}

let car = SportsCar()
car.drive(speedIncrease: 200)

let truck = Truck()
truck.drive(speedIncrease: 60)

class Laptop {
    var camera: String = "12MP"
    var screen: String = "5.5inch"
}

