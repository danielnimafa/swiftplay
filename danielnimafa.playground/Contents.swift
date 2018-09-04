//: Playground - noun: a place where people can play

import UIKit

// fibonacci 0,1,1,2,3,5,8

func fibonacciFun(_ n : Int) {
    var num1 = 0
    var num2 = 1
    
    var str = "\(num1), \(num2)"
    
    for interation in 0...n {
        let num = num1 + num2
        str.append(", \(num)")
        
        num1 = num2
        num2 = num
        
    }
    
    print(str)
}

fibonacciFun(20)




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
