//: Playground - noun: a place where people can play

import Cocoa

enum TextAligment: Int {
    case Left = 20
    case Right = 30
    case Center = 40
    case Justify = 50
}

var aligment = TextAligment.Left
aligment = .Right

switch aligment {
case .Left:
    print("Wyrównanie do lewej")
case .Right:
    print("Wyrównanie do prawej")
case .Center:
    print("Wyśrodkowanie")
case .Justify:
    print("Wyjustowanie")
}

print("Left ma wartość pierwotną \(TextAligment.Left.rawValue).")
print("Left ma wartość pierwotną \(TextAligment.Right.rawValue).")
print("Left ma wartość pierwotną \(TextAligment.Center.rawValue).")
print("Left ma wartość pierwotną \(TextAligment.Justify.rawValue).")
print("Zmienna aliment ma wartość pierwotną \(aligment.rawValue).")

//Utworzenie wartości pierwotnej
let myRawValue = 200
//Próba konwersji wartości pierwotnej na typ TextAligment
if let myAligment = TextAligment(rawValue: myRawValue) {
    //Konwersja zakończyła się sukcesem
    print("Udało się skonwertować \(myRawValue) na typ TextAligment.")
} else {
//Konwersja zakończyła się niepowodzeniem
print("\(myRawValue) nie ma odpowiadającego jej bloku case w typie TextAligment.")
}

enum ProgramingLanguage: String {
    case Swift
    case ObjectiveC
    case C
    case Cpp
    case Java
    
}
let myFavouriteLanguage = ProgramingLanguage.Swift
print("Moim ulubionym językiem programowania jest \(myFavouriteLanguage)")

enum Lightbulb {
    case On
    case Off
    
    func surfaceTemperatureForAmbientTemperature(ambient: Double) -> Double {
        switch self {
        case .On:
            return ambient + 150.0
        case .Off:
            return ambient
        }
    }
    
    mutating func toggle() {
        switch self {
        case .On:
            self = .Off
        case .Off:
            self = .On
        }
    }

}

var bulb = Lightbulb.On
let ambientTemperature = 77.0

var bulbTemperature = bulb.surfaceTemperatureForAmbientTemperature(ambient: ambientTemperature)
print("Temperatura żarówki wynosi \(bulbTemperature).")


bulb.toggle()
bulbTemperature = bulb.surfaceTemperatureForAmbientTemperature(ambient: ambientTemperature)
print("Temperatura żarówki wynosi \(bulbTemperature).")

enum ShapeDimension {
    
    case Point
    
    //Wartość powiązana z kwadratem to długość jego boku
    case Square(Double)
    
    //Wartość powiązana z prostokątem to szerokość i wysokość
    case Rectangle(width: Double, height: Double)
    
    case Perimeter(width: Double, height: Double)
    
    case Triangle(A: Double, B: Double, C: Double)
    
    func area() -> Double {
        switch self {
        case .Point:
            return 0
            
        case let .Square(side):
            return side * side
        case let .Rectangle(width: w, height: h):
            return w * h
        case let .Perimeter(width: w, height: h):
            return 2*w + 2*h
        case let .Triangle(A: a, B: b, C: c):
            return a+b+c
        }
    }
    
}

var squareShape = ShapeDimension.Square(10.0)
var rectShape = ShapeDimension.Rectangle(width: 5.0, height: 10.0)
var pointShape = ShapeDimension.Point
var perimeterShape = ShapeDimension.Perimeter(width: 5, height: 10)
var traingleShape = ShapeDimension.Triangle(A: 5, B: 5, C: 5)


print("Powierzchnia kwadratu = \(squareShape.area())")
print("Powierzchnia prostokąta = \(rectShape.area())")
print("Powierzchnia punktu = \(pointShape.area()).")

 enum FamilyTree {
    case NoKnownParents
   indirect case OneKnownParents(name: String, ancestors: FamilyTree)
   indirect case TwoKnownParents(fatherName: String, fatherAncestors: FamilyTree, motherName: String, motherAncestors: FamilyTree)
    
}

let fredAncestors = FamilyTree.TwoKnownParents(fatherName: "Fred Senior",fatherAncestors: .OneKnownParents(name: "Beata", ancestors: .NoKnownParents), motherName: "Marta", motherAncestors: .NoKnownParents)





