//
//  ViewController.swift
//  Concentration
//
//  Created by Rafał Chołody on 07/03/2018.
//  Copyright © 2018 Rafał Chołody. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var flipCount  = 0 {
        didSet{
             flipCountLabel.text = "Flips: \(flipCount)"
        }
    }

    @IBOutlet weak var flipCountLabel: UILabel!
    
    
    var emojiChoices = ["👻","🎃","👻","🎃"]
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.index(of: sender)
        {
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
            print("cardNumber: \(cardNumber)")
        }else {
            print("Chosen card was not in cardButtons")
        }
      
        
    }
    
    @IBOutlet var cardButtons: [UIButton]!
    
    
 
    
    func flipCard(withEmoji emoji: String, on button: UIButton){
        print("Click touchCard with emoji: \(emoji)")
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}

