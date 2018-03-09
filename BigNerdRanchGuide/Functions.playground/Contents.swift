//: Playground - noun: a place where people can play

import Cocoa

func printGreeting() {
    print("Witaj, playgroung!")
}

printGreeting()




func printPersonalGreetings(names: String...){
    for name in names {
        print("\(name),witaj w pliku typu playground!")
    }
}
printPersonalGreetings(names: "Rafał","Aleksy")
