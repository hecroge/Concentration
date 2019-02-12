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
    
    var indexOfOneAndOnlyFaceUpCard: Int?
    
    func chooseCard(at index: Int){
        if !cards[index].isMatched{
            if let matchIndex = indexOfOneAndOnlyFaceUpCard, matchIndex != index {
                //check if cards match
                if cards[matchIndex].identifier == cards[index].identifier {
                    cards[matchIndex].isMatched = true
                    cards[index].isMatched = true
                }
                cards[index].isFaceUp = true
                indexOfOneAndOnlyFaceUpCard = nil
            } else {
                //no cards or 2 cards face up
                for flipDownIndex in cards.indices {
                    cards[flipDownIndex].isFaceUp = false
                }
            cards[index].isFaceUp = true
            indexOfOneAndOnlyFaceUpCard = index
            }
            
        }
    }
    
    init(numberOfPairsOfCards: Int){
        for _ in 1...numberOfPairsOfCards {
            let card = Card()
            cards += [card, card]
            
        }
        
    }
}
