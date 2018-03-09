//
//  Town.swift
//  MonsterTown
//
//  Created by Rafał Chołody on 10/12/2017.
//  Copyright © 2017 Rafał Chołody. All rights reserved.
//

import Foundation

struct Town {
    var population = 5422
    var numberOfStoplights = 4
    
    func printTownDescription() {
        print("Populacja: \(population), liczba skrzyżowań z sygnalizacją świetlną: \(numberOfStoplights)")
    }
    
    mutating func changePopulation(amount: Int) {
        population += amount
    }
    
    
    
}
