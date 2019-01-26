//: Playground - noun: a place where people can play

import UIKit
import Foundation

print("//-------------------- Array\n")
//-------------------- Array
 
//“Creating an Array with a Default Value”
var threeDoubles = Array(repeating: 0.0, count: 3)

//“Creating an Array by Adding Two Arrays Together”
var anotherThreeDoubles = Array(repeating: 2.1, count: 3)

var sixDoubles = threeDoubles + anotherThreeDoubles
print("New Array: \(sixDoubles)")
 
var array = [6,4,2,7,9,1]
//print("sorted: \(array.sorted())")
let arraySorted1 = Array(array.sorted().reversed())
print(arraySorted1)

for element in array.sorted(by: {$0 > $1}) {
    print("\(element)")
}

let arraySorted2 = array.sorted { $0 > $1 }
print("Factorial from array: \(arraySorted2.reduce(1,*))")

func addOne(n1: Int) -> Int {
    return n1 + 1
}

let cities = ["Amsterdam", "New York", "San Francisco"]
cities.forEach { city in
    print(city)
}

let ages = ["Antoine": 28, "Jaap": 2, "Jack": 72]
ages.forEach { (name, age) in
    print("\(name) is \(age) years old")
}

(0...3).reversed().forEach { index in
    print("\(index)..")
}

// ------------------------------------------------------------------------------------

// ForIn vs forEach
/*Although the examples above seem to show the same behaviors, this is not completely true.*/
var evenNumbers = [Int]()
for number in (0...100) {
    guard evenNumbers.count < 10 else {
        break
    }
    
    guard number % 2 == 0 else {
        continue
    }
    evenNumbers.append(number)
}
print(evenNumbers)

let eventNumber = (0...100).filter { number -> Bool in
    return number % 2 == 0
    }.prefix(10)
print("Event Number: \(eventNumber)")

// ------------------------------------------------------------------------------------

// While Loop
/*While loops are less often used, but can be really useful. It’s basically executing its statements while the condition is true. The following example is rolling dice until the max amount of tries is reached.*/

func rollDice() -> Int {
    return (1...6).randomElement()!
}

let maxTries = 6
var tries = 0
var score = 0

while tries < maxTries {
    score += rollDice()
    tries += 1
}

// ------------------------------------------------------------------------------------

// Repeat While loops
repeat {
    score += rollDice()
    tries += 1
} while tries < maxTries

print("Total score is \(score)")

// ------------------------------------------------------------------------------------

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

print("\n-----Set-----\n")
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


print("\n-----Map-----\n")
// --------------- Map

let bookAmount = ["harry potter":100.0, "junglebook":1000.0]
/*let result = bookAmount.map { (key, value) in
    return (key.capitalized, value * 0.5)
}
print("Map Dictionary: \(result)")
print("Tuple: \(result[0].0)")*/

let lengthInMeters: Set = [4.0,6.2,8.9]
//let lengthInFeet = lengthInMeters.map { (meters) in
//    meters * 3.2808
//}
//print("Length in Feet: \(lengthInFeet)")
//print(lengthInFeet[0])

let newArr = [1,2,4,5]
let indexAndNum = newArr.enumerated().map { (index, value) in
    return "\(index):\(value)"
}
print(indexAndNum)

print("\n-------Filter-------\n")
// -------Filter-------
//Use filter to loop over a collection and return an Array containing only those elements that match an include condition.

let arrayOfInteger = [1,2,3,4,5,6,7]
print(arrayOfInteger.filter{$0 % 2 == 0})

print(bookAmount.filter { $1 > 100 })


print("\n-------Reduce-------\n")
// -------Reduce-------
//Use reduce to combine all items in a collection to create a single new value.

let numbers = [1,2,3,4,5]
let numberSum = numbers.reduce(0, { x, y in
    x + y
})
//let reducedNumber = numbers.reduce(1) { $0 * $1 }
let reducedNumber = numbers.reduce(1,*)
print("Reduced Number: \(reducedNumber)")

let codes = ["abc", "cde", "ghi"]
let text = codes.reduce("") { $0 + $1 }
print(text)

let reducedAmountOnDict2 = bookAmount.reduce(0) { (result, tuple) in
    return result + tuple.value
}

let reducedBooknamesOnDict2 = bookAmount.reduce("Books are ") { $0 + $1.0 + " " }

let reduceSet = lengthInMeters.reduce(0.0) { $0 + $1 }

print("Dict reduced: \(reduceSet)")


print("\n-------Flatmap-------\n")
// -------Flatmap-------
// Flatmap is used to flatten a collection of collections . But before flattening the collection, we can apply map to each elements.
let kodes = [["abc", "def", "ghi"], ["abc", "def", "ghi"]]
let newKodes = kodes.flatMap { $0.map { $0.uppercased() } }
let newCodes = codes.flatMap { (member) in return member.uppercased()}

let dictArrayFlatmap = [["key1":"value1", "key2":"value2"], ["key3":"value3"]]
let flatmapDict = dictArrayFlatmap.flatMap { $0 }

var dictionary = [String:String]()

flatmapDict.forEach {
    dictionary[$0.0] = $0.1
}
print(dictionary)

print("\n-------Chaining map+filter+reduce-------\n")
// -------Chaining map+filter+reduce-------

let arrayOfArrays = [[1,2,3,4],[5,6,7,8,4]]
let sumOfSquaresOfEvenNumbers = arrayOfArrays.flatMap{$0}.filter{ $0 % 2 == 0 }.map{ $0 * $0 }
print("sumOfSquaresOfEvenNumbers: \(sumOfSquaresOfEvenNumbers.reduce(0,+))")
print(arrayOfArrays.flatMap{$0}.filter{ $0 % 2 == 0 })

