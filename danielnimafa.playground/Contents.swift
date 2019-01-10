//: Playground - noun: a place where people can play

import UIKit
import Foundation


//-------------------- Array
 
//“Creating an Array with a Default Value”
var threeDoubles = Array(repeating: 0.0, count: 3)

//“Creating an Array by Adding Two Arrays Together”
var anotherThreeDoubles = Array(repeating: 2.1, count: 3)

var sixDoubles = threeDoubles + anotherThreeDoubles
print("New Array: \(sixDoubles)")
 
var array = [6,4,2,7,9,1]
//print("sorted: \(array.sorted())")

func addOne(n1: Int) -> Int {
    return n1 + 1
}

//print("Mapping array: \(array.map{addOne(n1: $0)})")

array = array.map(addOne)
print("addone ONE: \(array)")

 //-------------------- Fibonacci
 //fibonacci 0,1,1,2,3,5,8

func fibonacciFun(_ n : Int) {
    var num1 = 0
    var num2 = 1

    var str = "\(num1), \(num2)"

    for _ in 0...n {
        let num = num1 + num2
        str.append(", \(num)")
//        if num % 2 == 0 {
//            str.append(", \(num)")
//        }

        num1 = num2
        num2 = num

    }

    print("Fibonacci result: \(str)")
}

fibonacciFun(5)

for number in 1...20 where number % 2 == 0 {
    print("loop where \(number)")
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

let arrayOfNumber = [12,7,1,3,9,16,19,21]

var sum = 0

for number in arrayOfNumber {
    sum += number
    print(sum)
}

print("Result of sum: \(sum)\n\n")

//“Accessing and Modifying an Array”
var shoppingList = ["Egg", "Milk"]
if !shoppingList.isEmpty { print("Shopping list is Empty") }
shoppingList.append("Flour")

shoppingList += ["Bakery"]
print(shoppingList)
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
print(shoppingList)

var firstItem = shoppingList[0]
shoppingList[0] = "Six eggs"

shoppingList[4...6] = ["Bananas", "Durian"]

shoppingList.insert(contentsOf: ["Chocolate Spread", "Cheese", "Butter"], at: 0)

for (index, value) in shoppingList.enumerated() {
    print("Item \(index), value: \(value)")
}

//shoppingList.remove(at: 0)

print(shoppingList)
print(shoppingList.count)

// ------- Set
var letters = Set<Character>()
letters.insert("d")
letters.insert("a")
letters.insert("n")
print("Letter member = \(letters.description)")
print("Letter count = \(letters.count)")

var favoriteGenres: Set<String> = ["Rocks", "Classical", "Hip hop"]
favoriteGenres.insert("Jazz")
favoriteGenres.remove("Rocks")
print(favoriteGenres.description)

// :: Iterating over Set
for genre in favoriteGenres.sorted() { print(genre) }
favoriteGenres.forEach { print($0) }

// :: Performing Set Operations
let oddDigits: Set = [1, 3, 5, 7, 9]
let eventDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumber: Set = [2, 3, 5, 7]

let union = oddDigits.union(eventDigits).sorted()
print("Union: \(union)")
let intersection = oddDigits.intersection(eventDigits).sorted()
print("Intersection: \(intersection)")
let subtracting = oddDigits.subtracting(singleDigitPrimeNumber).sorted()
print("Subtracting: \(subtracting)")
let symmetricDiff = oddDigits.symmetricDifference(singleDigitPrimeNumber)
print("SymmetricDifference: \(symmetricDiff)")



// --------------- Map

let bookAmount = ["harry potter":100.0, "junglebook":100.0]
let result = bookAmount.map { (key, value) in
    return (key.capitalized, value * 0.5)
}
print("Map Dictionary: \(result)")
print("Tuple: \(result[0].0)")

let lengthInMeters: Set = [4.0,6.2,8.9]
let lengthInFeet = lengthInMeters.map { (meters) in
    meters * 3.2808
}
print("Length in Feet: \(lengthInFeet)")
print(lengthInFeet[0])
