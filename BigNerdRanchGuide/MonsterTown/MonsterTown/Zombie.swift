//
//  Zombie.swift
//  MonsterTown
//
//  Created by Rafał Chołody on 10/12/2017.
//  Copyright © 2017 Rafał Chołody. All rights reserved.
//

import Foundation

class Zombie: Monster {
    var walksWithLimp = true
    
    override func terrorizeTown() {
        
        town?.changePopulation(amount: -10)
        super.terrorizeTown()
    }
    
    func changeName(name: String, walksWithLimp: Bool) {
        self.name = name
        self.walksWithLimp = walksWithLimp
    }
    
}
