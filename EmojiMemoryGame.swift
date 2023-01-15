//
//  EmojiMemoryGame.swift
//  Stanford
//
//  Created by Roneo  Chakma on 15/11/2022.
//

import SwiftUI




class EmojiMemoryGame: ObservableObject{
    
    
    static let emojis = ["✈️","🚗","🚀","🚘","🚙","🚎","🚛","🏎","🛫","🚕","🚚","🚐","⛴","🚝","🚍","🏍","🛳","🚟","🚖","🚓","🛩","🛵","🚲","🚋","🚌"]
    
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairOfCards: 4) { pairIndex in emojis[pairIndex]
        }
    }
    
    
    
    @Published private var model: MemoryGame<String> = createMemoryGame()
    
        
    
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    
    func choose(_ card: MemoryGame<String>.Card) {
       
        model.choose(card) 
    }
}

