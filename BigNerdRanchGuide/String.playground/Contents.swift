//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"
let play = "Wiataj"
var mutable = "Wit"
mutable += "!"
for c: Character in mutable.characters {
    print("\(c)")
}

let oneCool = "\u{1F60E}"
let aCute = "\u{0061}\u{0301}"

for scalar in str.unicodeScalars {
    print("\(scalar.value)")
}
let ant = "\u{00E1}"

let fromStart = str.startIndex
let toPosition = 4
let end = str.characters.index(fromStart, offsetBy: toPosition)
let fifthCharacter = str[end]

