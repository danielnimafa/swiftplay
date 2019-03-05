//: Playground - noun: a place where people can play

import UIKit
import Foundation

// -------------------- Final Classes

final class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

class LittleDog : Dog {
    
}



class Shape {
    var area: Double?
    
    func calculateArea(valA: Double, valB: Double) {
        
    }
}

class Triangle: Shape {
    
    override func calculateArea(valA: Double, valB: Double) {
        area = (valA * valB) / 2
        print("\(area ?? 0.0)")
    }
}

class Rectangle: Shape {
    
    override func calculateArea(valA: Double, valB: Double) {
        
        area = (valA * valB)
    }
}

class Trapesium: Shape {
    
    override func calculateArea(valA: Double, valB: Double) {
        area = valA + valB
    }
}

let tri = Triangle()
tri.calculateArea(valA: 11.9, valB: 2.5)
print("Hasil kalkulasi \(tri.area!)")
