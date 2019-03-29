//: Playground - noun: a place where people can play

import UIKit
import Foundation


// -------------------- Lazy Properties

class Computer {
    var power: Int
    var speed: Int
    var ram: Int
    
    lazy var cpuPower: Int = {
        return (1000 * 2) + (2000 * 2) + (3000 * 2) + 1000
    }()
    
    var computerOverallValue: Int {
        return power * speed * ram + cpuPower
    }
    
    init(power: Int, speed: Int, ram: Int) {
        self.power = power
        self.speed = speed
        self.ram = ram
    }
}

let myComputer = Computer(power: 300, speed: 200, ram: 700)
print(myComputer.computerOverallValue)


// -------------------- Mutability
// The final difference between classes and structs is the way they deal with constants. If you have a constant struct with a variable property, that property can’t be changed because the struct itself is constant.

// However, if you have a constant class with a variable property, that property can be changed. Because of this, classes don’t need the mutating keyword with methods that change properties; that’s only needed with structs.

class Singer {
    var name = "Taylor Swift"
}

let taylor = Singer()
taylor.name = "Ed Sheeran"
print(taylor.name)

// If you want to stop that from happening you need to make the property constant:
class OtherSinger {
    let name = "Taylor Swift"
}
