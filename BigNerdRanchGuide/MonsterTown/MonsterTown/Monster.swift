//
//  Monster.swift
//  MonsterTown
//
//  Created by Rafał Chołody on 10/12/2017.
//  Copyright © 2017 Rafał Chołody. All rights reserved.
//

import Foundation

class Monster {
    var town: Town?
    var name = "Potwór"
    
    func terrorizeTown() {
        if town != nil {
            print("\(name) terroryzuje miasto!")
        }else {
            print("\(name) jeszcze nie znalazł miasta do terroryzowania...")
        }
    }
}
