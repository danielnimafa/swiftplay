//: Swift 4 grouping functions

import UIKit
import Foundation

func filterGreaterThanValue(value: Int, numbers: [Int]) -> [Int] {
    var filteredSetOfNumber = [Int]()
    for num in numbers {
        if num > value {
            filteredSetOfNumber.append(num)
        }
    }
    return filteredSetOfNumber
}

//let filteredList = filterGreaterThanValue(value: 5, numbers: [1,2,3,4,5,7,10,20])
//print(filteredList)

func filterWithPredicate(closure: (Int) -> Bool, numbers: [Int]) -> [Int] {
    var filteredNumber = [Int]()
    for num in numbers {
        if closure(num) {
            filteredNumber.append(num)
        }
    }
    return filteredNumber
}

let filteredNums = filterWithPredicate(closure: { (num) -> Bool in
    return num > 2
}, numbers: [1,2,3,4,5,7,10,20])
print(filteredNums)
