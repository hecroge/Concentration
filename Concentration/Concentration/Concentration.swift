//
//  Concentration.swift
//  Concentration
//
//  Created by Héctor Rogel on 12/02/2019.
//  Copyright © 2019 Héctor Rogel. All rights reserved.
//

import Foundation

class Concentration {
    
    var cards = [Card]()
    
    func chooseCard(at index: Int){
        if cards[index].isFaceUp {
            cards[index].isFaceUp = false
        } else {
            cards[index].isFaceUp = true
        }
    }
    
    init(numberOfPairsOfCards: Int){
        for _ in 1...numberOfPairsOfCards {
            let card = Card()
            cards += [card, card]
            
        }
        
    }
}
