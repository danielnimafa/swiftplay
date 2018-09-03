//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var dataNomor = [Int: String]()

dataNomor[3] = "Tiga"
dataNomor[99] = "Songo Songo"

print("nomor", dataNomor[3] as Any)

var jenjangPendidikan: [String: String] = ["MHS" : "Mahasiswa", "SD": "Siswa SD"]

print("Total jenis data member ada: \(jenjangPendidikan.count) jenis.")


jenjangPendidikan["SMA"] = "Sekolah Menengah Akhir"
jenjangPendidikan["SMP"] = "Sekolah Menengah Pertama"

for (kode, deskripsi) in jenjangPendidikan {
    print("Kode \(kode) deskripsi \(deskripsi)")
}

for key in jenjangPendidikan.keys {
    print("Key =  \(key)")
}

for val in jenjangPendidikan.values {
    print("Value = \(val)")
}

