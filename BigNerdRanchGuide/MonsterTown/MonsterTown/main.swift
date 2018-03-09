//
//  main.swift
//  MonsterTown
//
//  Created by Rafał Chołody on 10/12/2017.
//  Copyright © 2017 Rafał Chołody. All rights reserved.
//

import Foundation

var myTown = Town()

myTown.changePopulation(amount: 1000000)

let fredTheZombie = Zombie()
fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printTownDescription()

fredTheZombie.changeName(name: "Fred the Zombie", walksWithLimp: false)

