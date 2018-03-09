//: Playground - noun: a place where people can play

import Cocoa

var bucketList = ["Zdobyć Rysy"]
var newItem = [
    "Polecieć balonem",
    "Driftować",
    "Tańczyć",
    "Wędrować"
]

bucketList+=newItem
bucketList.insert("Przejechać czymś", at: 2)
print(bucketList)
let equal = (bucketList == newItem)
let lunches = [
    "Cheesburger",
    "Pizza",
    "Sałata z kurczakiem"
]
bucketList.reverse()
print(bucketList)

bucketList.remove(at: 2)
print(bucketList)


var movieRatings = ["Donnie Darko": 4, "Chung": 5, "Mroczne miasto": 4]
let darkoRating = movieRatings["Donnie Darko"]

movieRatings["Mroczne miastp"] = 5
print(movieRatings)

