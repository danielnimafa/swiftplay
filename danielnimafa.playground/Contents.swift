//: Playground - noun: a place where people can play

import UIKit
import Foundation

// ------------------------------ Methods

struct City {
    var population: Int
    
    func collectTaxes() -> Int {
        return population * 1000
    }
}

let london = City(population: 9_000_000)
let taxes = london.collectTaxes()
print(taxes)

