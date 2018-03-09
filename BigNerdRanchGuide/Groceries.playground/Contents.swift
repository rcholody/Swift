//: Playground - noun: a place where people can play

import Cocoa



let myCities = Set(["Atlantyda","Chicago","Nowy York", "San Francisco"])
let yourCities = Set(["Chicago","San Francisco","Jacksonville"])

let disjoint = yourCities.isDisjoint(with: myCities)


