//: Playground - noun: a place where people can play

import UIKit

class Shape {
    var area: Double?
    
    func calcArea(valA: Double, valB: Double) {
        
    }
}

class Triangle: Shape {
    override func calcArea(valA: Double, valB: Double) {
        area = (valA * valB) / 2
    }
}

class Rectangle: Shape {
    override func calcArea(valA: Double, valB: Double) {
        area = valA * valB
    }
}
