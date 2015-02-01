//
//  BordingCardSorter.swift
//  BoardingCards
//
//  Created by Ana Nogal on 01/02/2015.
//  Copyright (c) 2015 AnaNogal. All rights reserved.
//

import Foundation

public class BoardingCardSorter{
    
    public init(){}
    
    public func sort(bordingCards:[BoardingCard]) -> [BoardingCard] {
        var cards = [BoardingCard]()
        var currentCard = findFirst(bordingCards)
        var indexedBordingCards = indexBordingCardsByOrigin(bordingCards)
        
        cards.append(currentCard)
        for var i=0; i<bordingCards.count-1; i++ {
            let foundCard = indexedBordingCards[currentCard.destination]
            cards.append(foundCard!)
            currentCard = foundCard!
        }
        
        return cards
    }
    
    private func findFirst(boardingCards:[BoardingCard]) -> BoardingCard{
        let destinations = boardingCards.map({$0.destination})
        for var i=0; i < boardingCards.count; i++ {
            if destinations.filter({$0 == boardingCards[i].origin}).count == 0 {
                return boardingCards[i]
            }
        }
        return boardingCards.first!
    }
    
    private func indexBordingCardsByOrigin(bordingCards:[BoardingCard]) -> [String: BoardingCard]{
        var indexedCards = [String: BoardingCard]()
        for var i=0; i<bordingCards.count; i++ {
            indexedCards[bordingCards[i].origin] = bordingCards[i]
        }
        return indexedCards
    }
}
