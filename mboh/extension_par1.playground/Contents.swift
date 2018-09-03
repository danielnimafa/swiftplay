//: Playground - noun: a place where people can play

import UIKit

extension String {
    func diwalik() -> String {
        var characterArray = [Character]()
        for character in self.characters {
            characterArray.insert(character, at: 0)
        }
        return String(characterArray)
    }
}

var name = "Daniel Prastiwa"
name.diwalik()
print(name)
var nameResult = name.diwalik()
print(nameResult)

extension Int {
    func kotak() -> Int {
        return self * self
    }
}

var value = 9
value.kotak()

print(value)



extension Double {
    mutating func calculateArea() {
        let pi = 3.1415
        self = pi * (self * self)
    }
}

class Circle {
    var radius: Double
    
    init(radius: Double) {
        self.radius = radius
    }
}

var circle = Circle(radius: 2.45)
print(circle.radius)

circle.radius.calculateArea()
print(circle.radius)




