//
//  MemoryGame.swift
//  Stanford
//
//  Created by Roneo  Chakma on 15/11/2022.
//

import Foundation

struct MemoryGame<CardContent> {
    private(set) var cards: Array<Card>
    
   mutating func choose(_ card: Card) {
        let chosenIndex = index(of: card)
       cards[chosenIndex].isFaceUp.toggle()
        print("\(cards)")
        
    }
    
    func index(of card: Card) -> Int {
        for index in 0..<cards.count {
                if cards[index].id == card.id {
            return index
            
        }
    }
    
        return 0
    }
    
    init (numberOfPairOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = Array<Card>()
        // add numberOfPairOfCards x 2 cards to cards array
        
        for pairIndex in 0..<numberOfPairOfCards {
            let content = createCardContent(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))
        }
        
    }
    
    struct Card: Identifiable{
        
        var isFaceUp: Bool = true
        var isMatched: Bool = true
        var content: CardContent
        var id: Int
    }
}
