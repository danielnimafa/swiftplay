//: Swift 4 grouping functions

import UIKit
import Foundation

struct Person {
    let firstName: String
    let lastName: String
    let age: Int
}

let peoples = [
    Person(firstName: "Daniel", lastName: "Prastiwa", age: 28),
    Person(firstName: "Ramadhania", lastName: "Kayla", age: 3),
    Person(firstName: "Yas", lastName: "Min", age: 3),
    Person(firstName: "Daniel", lastName: "Sahuleka", age: 29),
    Person(firstName: "Daniel", lastName: "Bedingsfield", age: 30),
    Person(firstName: "Tony", lastName: "Stark", age: 30),
    Person(firstName: "Chris", lastName: "Hewoth", age: 22),
    Person(firstName: "Captain", lastName: "America", age: 22),
    Person(firstName: "Thanos", lastName: "Stone", age: 20)
]

//let groupedDictionary = Dictionary(grouping: peoples) { (person) -> Character in
//    return person.firstName.first!
//}

let groupedDictionary = Dictionary(grouping: peoples) { (person) -> String in
    return person.firstName
}

var groupedPeople = [[Person]]()

let keys = groupedDictionary.keys.sorted()
keys.forEach({
    groupedPeople.append(groupedDictionary[$0]!)
})

groupedPeople.forEach({
    $0.forEach({
        print($0)
    })
    print("----------")
})


