//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

func divisionDescription(forNumerator num: Double, andDenominator den: Double, withPunctuation punctuation: String = ".") -> String {
    return "\(num) dzielone przez \(den) daje \(num/den)\(punctuation)"
}
print(divisionDescription(forNumerator: 9, andDenominator: 3,withPunctuation: "!"))

func areOfTriangle(withBase base: Double,andHeight height: Double) -> Double {
    let numerator = base * height
    func divide() -> Double {
        return numerator / 2
    }
    return divide()
}
areOfTriangle(withBase: 3, andHeight: 5)

func sortEvenOdd(numbers: [Int]) -> (evens: [Int],odds: [Int]) {
    var evens = [Int]()
    var odds = [Int]()
    for number in numbers {
        if number % 2 == 0{
            evens.append(number)
        } else {
            odds.append(number)
        }
    }
    return (evens,odds)
}

let aBunchOfNumbers = [10,1,4,3,57]
let theSortedNumbers = sortEvenOdd(numbers: aBunchOfNumbers)
print("Liczbami parzystymi są: \(theSortedNumbers.evens); liczbami nieparzystymi są: \(theSortedNumbers.odds)")


func grabMiddleName(name: (String, String?, String)) ->String? {
    return name.1
}
let middleName = grabMiddleName(name: ("Mateusz",nil,"Mateuszewski"))
if let theName = middleName {
    print(theName)
}

func greetByMiddleName(name: (first: String, middle: String?, last: String)) {
    guard let middleName = name.middle, (middleName.count < 4) else {
         print("Witaj")
        return
    }
   
    print("Cześć, \(middleName)!")

}
greetByMiddleName(name: ("Matuesz","Dan","Kowalski"))

func beansSifter(groceryList: [String]) {
    
    let beans = groceryList.
    let otherGroceries = groceryList
}


let result = beansSifter(groceryList: ["zielona fasola","mleko","czarna fasola", "fasola pinto","jabłka"])
result.beans == ["zielona fasola","czarna fasola","fasola pinto"]
result.otherGroceries == ["mleko","jabłka"]

let plans = "Let's meet at the café"

// Case sensitive
print(plans.hasSuffix("maslo"))
// Prints "false"
let composedCafe = "café"
let decomposedCafe = "cafe\u{0301}"

print(plans.hasSuffix(composedCafe))

