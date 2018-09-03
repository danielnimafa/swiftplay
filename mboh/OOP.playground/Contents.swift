//: Playground - noun: a place where people can play

import UIKit

class Kendaraan {
    
    var roda = 4
    var lampu = 4
    var kuda = 1700
    var model = ""
    
    func jalankan() {
        
    }
    
    func berhenti() {
        
    }
    
}

let toyota = Kendaraan()
toyota.model = "agya"

let honda = Kendaraan()
honda.model = "brio"

print(toyota.model)

func passByReff(kendaraan: Kendaraan){
    kendaraan.model = "Ertiga"
}

func passByValue(value: String) {
    value = "Jazz"
}

var dataMobil = "Fortuner"

passByValue(value: dataMobil)

passByReff(kendaraan: honda)
print(honda.model)

