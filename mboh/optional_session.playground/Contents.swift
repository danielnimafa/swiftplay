//: Playground - noun: a place where people can play

import UIKit

let optionalImage: UIImage? = #imageLiteral(resourceName: "kotlin.png")
let nonOptionalImage: UIImage = #imageLiteral(resourceName: "IMG_0001.png")


var optionalNumber: Int? = nil
var number: Int = 5

// force unwraping
if optionalNumber != nil {
    print("optionalNumber has a value of \(optionalNumber)")
}

// optional binding
if let constantNumber = optionalNumber {
    print("constantNumber has a value of \(constantNumber)")
} else {
    print("optionalNumber is nil")
}

func intPrinter() {
    guard let constantNumber = optionalNumber else {return}
    print("ConstantNumber value is \(constantNumber)")
}

intPrinter()

// implicitly unwrapped optional
// jika anda tidak yakin value nya tidak nil, maka jangan gunakan implicit unwrap
let assumedValue: Int! = 5
let implicitValue: Int = assumedValue

 // nil coalescing & using ternary operator
let optionalInt: Int? = nil
let result = optionalInt ?? 0



// example class
class ComicConAttendee {
    var admissionBade: AdmissionBadge?
    
    init(badge: AdmissionBadge?) {
        self.admissionBade = badge
    }
}

class AdmissionBadge {
    var numberOfDays: Int
    
    init(numberOfDays: Int) {
        self.numberOfDays = numberOfDays
    }
}

let admissionBadge = AdmissionBadge(numberOfDays: 3)
let atendee = ComicConAttendee(badge: admissionBadge)

if let daysAttendable = atendee.admissionBade?.numberOfDays {
    print("this attndee can enter Comic Con for \(daysAttendable) days.")
} else {
    print("This person has not yet purchased a ticket. Please refer them to ticketing window.")
}























