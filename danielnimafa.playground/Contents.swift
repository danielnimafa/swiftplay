//: Playground - noun: a place where people can play

import UIKit
import Foundation


print("-------------------- Range Operators --------------------")


let score = 85

switch score {
case 0:
    print("Mboh")
case 0..<50:
    print("You failed badly")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}

let sc = 9...11
print(sc)

let height = 10
let weight = 20
height <= weight


print("-------------------- Switch case --------------------")

let weather = "sunny"

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("wear sunscreen")
    fallthrough
default: print("enjoy your day!")
}




print("-------------------- Ternary Operator --------------------")

let firstHead = 11
let secondHead = 10
print(firstHead == secondHead ? "heads are the same" : "heads are diffrent")



print("-------------------- Combining Conditions --------------------")

let age1 = 12
let age2 = 21

if age1 > 18 || age2 > 18 {
    print("One of them over 18!")
}


if age1 > 18 && age2 > 18 {
    print("Both are over 18!")
}

var actualWage: Int = 22_000
var medianWage: Double = 22_000

if actualWage >= medianWage {
    print("Success!!!")
}



print("-------------------- Conditions --------------------")

let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 21 {
    print("Blackjack!")
}



print("-------------------- Compound Assignment Operator --------------------")

var score = 95
score -= 5
print(score)

var quote = "I would like to become "
quote += "professional iOS Developer"
print(quote)



print("-------------------- Operator Overloading --------------------")

let fakers = "Fakers gonna "
let action = fakers + "fake"
print(action)

let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
print(firstHalf + secondHalf)

var oke = 10 / 2.0
print(oke)

// Remember, Swift is a type-safe language, which means it won’t let you mix types. For example, you can’t add an integer to a string because it doesn’t make any sense.

// -------------------- Calculate BMI

func calculateBMI(weight: Double, height: Double) -> Double {
    //let bmi = weight / (height * height)
    let bmi = weight / pow(height, 2)
    print("BMI value: \(bmi)")
    
    if bmi > 25 {
        print("You are overweight")
    } else if bmi > 18.5 && bmi < 25 {
        print("You have a normal weight")
    } else if bmi < 18.5 {
        print("You are underweight")
    }

    return bmi
}

var bmiResult = calculateBMI(weight: 70, height: 1.63)
