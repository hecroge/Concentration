//
//  Card.swift
//  Concentration
//
//  Created by Héctor Rogel on 12/02/2019.
//  Copyright © 2019 Héctor Rogel. All rights reserved.
//

import Foundation

struct Card {
    
    var isFaceUp = false
    var isMatched = false
    var identifier: Int
    
    static var identifierFactory = 0
    
    static func getUniqueIdentifier() -> Int{
        identifierFactory += 1
        return identifierFactory
    }
    init(){
        self.identifier = Card.getUniqueIdentifier()
    }
}
