//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func getMilk(howManyMilks : Int, howMuchMoneyWasGiven : Int) -> Int {
    
    print("Go to the shops")
    print("buy \(howManyMilks) cartons of milk")
    
    let priceToPay = howManyMilks * 2
    
    print("pay $\(priceToPay)")
    print("come home")
    
    let change = howMuchMoneyWasGiven - priceToPay
    
    return change
    
}

let ammountOfChange = "\(getMilk(howManyMilks: 4, howMuchMoneyWasGiven: 10))"

func loadMilk(howManyMilk : Int) -> Int {
    var result = 12 * howManyMilk
    return result
}

var milkCount = loadMilk(howManyMilk: 5)
