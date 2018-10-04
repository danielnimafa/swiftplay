//: Playground - noun: a place where people can play

import UIKit
import Foundation


 //-------------------- Array
let array = [6,4,2,7,9,1]

func addOne(n1: Int) -> Int {
    return n1 + 1
}

print(array.map{$0 + 1})

array.map({(n1: Int) -> Int in
    return n1 + 1
})

array.map(addOne)

 //-------------------- Fibonacci
 //fibonacci 0,1,1,2,3,5,8

func fibonacciFun(_ n : Int) {
    var num1 = 0
    var num2 = 1

    var str = "\(num1), \(num2)"

    for _ in 0...n {
        let num = num1 + num2
        if num % 2 == 0 {
            str.append(", \(num)")
        }

        num1 = num2
        num2 = num

    }

    print(str)
}

fibonacciFun(30)

// -----------------------------------------


for number in 1...20 where number % 2 == 0 {
    print(number)
}

func bearSong(_ totalNumberOfBottles : Int) -> String {

    var lyric: String = ""

    for number in (1...totalNumberOfBottles).reversed() {
        let newLine = "\(number) bottles of beer on the wall, \(number) bottles of beer.\n Take one down and pass it around, \(number - 1) of beer on the wall.\n\n"
        lyric += newLine
    }

    // lyric +=

    return lyric

}

print(bearSong(13))






 //-------------------- Array

let arrayOfNumber = [12,7,1,3,9,16,19,21]

var sum = 0

for number in arrayOfNumber {
    sum += number
    print(sum)
}

print("Result of sum: \(sum)")


