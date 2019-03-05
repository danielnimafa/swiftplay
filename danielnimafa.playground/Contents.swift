//: Playground - noun: a place where people can play

import UIKit
import Foundation


// -------------------- Copying Objects
// The third difference between classes and structs is how they are copied. When you copy a struct, both the original and the copy are different things – changing one won’t change the other. When you copy a class, both the original and the copy point to the same thing, so changing one does change the other.

struct SingerStruct {
    var name = "Taylor Swift"
}

var singerStruct = SingerStruct()
print(singerStruct.name)
var copySingerStruct = singerStruct
copySingerStruct.name = "Britney Spears"
print(singerStruct.name)

class Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)
var copySinger = singer
copySinger.name = "Taylor Kotlin"
print(singer.name)

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
