//: Playground - noun: a place where people can play

import UIKit
import Foundation

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
