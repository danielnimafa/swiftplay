//: Playground - noun: a place where people can play

import UIKit
import Foundation

for i in 0..<7 {
    print(i)
}


print("--------------- Skipping Loops ---------------")

// As you’ve seen, the break keyword exits a loop. But if you just want to skip the current item and continue on to the next one, you should use continue instead.
// To try this out, we can write a loop from 1 through 10, then use Swift’s remainder operator to skip any numbers that are odd:

for i in 1...10 {
    if i % 2 == 1 {
        continue
    }
    
    print(i)
}

// Remember, the remainder operator figures out how many times 2 fits into each number in our loop, then returns whatever is left over. So, if 1 is left over, it means the number is odd, so we can use continue to skip it.


print("--------------- Exiting Multiple Loops ---------------")

// If we wanted to exit part-way through we need to do two things. First, we give the outside loop a label, like this:
// Second, add our condition inside the inner loop, then use break outerLoop to exit both loops at the same time:

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i*j
        print("\(i) * \(j) is \(product)")
        
        if product == 50 {
            print("bullsEye!")
            break outerLoop
        }
        
    }
}

// With a regular break, only the inner loop would be exited – the outer loop would continue where it left off.



print("--------------- Exit Loops ---------------")

var password = "1"
repeat {
    password += "1"
    if password == "11111" {
        print("That's a terrible password.")
    }
    break
} while true

var countDown = 10

while countDown >= 0 {
    print(countDown)
    
    if countDown == 4 {
        print("I'm bored! Lets get out!")
        break
    }
    
    countDown -= 1
}

print("Blast off!")



print("--------------- Repeat Loops ---------------")

var nomer = 1

repeat {
    print("Nomer: \(nomer)")
    nomer += 1
} while nomer == 1

print("Hello BOSSSS!!!")



print("--------------- While Loops ---------------")

var counter: Int = 1
while counter < 100 {
    counter += 10
    if counter % 10 == 5 {
        print("Matching number found")
    }
    print("Counter:", counter)
}

var itemsSold: Int = 0
while itemsSold < 5000 {
    itemsSold += 100
    if itemsSold % 1000 == 1000 {
        print("\(itemsSold) items sold - a big milestone!")
    }
}

var counterCount = 2
while counterCount < 64 {
    print("\(counterCount) is a power of 2.")
    counterCount *= 2
}

var averageScore = 2.5
while averageScore < 15.0 {
    averageScore += 2.5
    print("The average score is \(averageScore)")
}

var cats: Int = 0
while cats < 10 {
    cats += 1
    print("I'm getting another cat.")
    if cats == 4 {
        print("Enough cats!")
        cats = 10
    }
}

//var number: Int = 10
//while number > 0 {
//    number -= 2
//    if number % 2 == 0 {
//        print("\(number) is even number")
//    }
//}
//
let colors = ["Red", "Green", "Blue", "Yellow", "Orange"]
var colorCounter = 0
while colorCounter < 5 {
    print("\(colors[colorCounter]) is popular color")
    colorCounter += 1
}

//while 0 < 5 {
//    print("I'm counting to 5!")
//}

var pianoLesson = 1
while pianoLesson < 5 {
    print("This is lesson \(pianoLesson)")
    pianoLesson += 1
}

var number = 1
while number <= 20 {
    print(number)
    number += 1
}
print("Ready or not, here i come!")




print("--------------- For Loops ---------------")

//for num in "John", "Paul", "Domblang" {
//    print("Num: \(num)")
//}

print("I'm gonna ")
	for _ in 1...5 {
    print("play")
}

let albums = ["Red", "1990", "Reputation"]
for album in albums {
    print("Album: \(album)")
}

let count = 0...10
for number in count {
    print("Count: \(number)")
}

for i in 1...15 {
    if i % 3 == 0 {
        if i % 5 == 0 {
            print("\(i) is a multiple of both 3 and 5.")
        }
    }
}


albums.filter{ $0 == "1990" }.forEach { (album) in
    print("Alboum found: \(album)")
}

albums.filter{ $0 != "1990" }.forEach{ print("Album: \($0)") }

albums.filter{$0 != "1990"}.map { $0.uppercased() }.forEach{ print("Album Mapped: \($0)") }




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


