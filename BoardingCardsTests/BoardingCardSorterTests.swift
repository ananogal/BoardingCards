
import UIKit
import XCTest
import BoardingCards

class BoardingCardSorterTests: XCTestCase {

    let sorter = BoardingCardSorter()
    
    override func setUp() {
        super.setUp()
        
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testItShouldReturnBordingCardWhenThereIsOnlyOne(){
        let sortedCards = sorter.sort([TrainBoardingCard(identifier:"78A", origin:"Madrid", destination:"Barcelona", seat:"45B")])
        compareBordingCards(sortedCards, expectedCards: [TrainBoardingCard(identifier:"78A", origin:"Madrid", destination:"Barcelona", seat:"45B")])
    }
    
    func testItShouldSwapBordingCardsWhenOriginOfSecondCardIsNotDestinationOfAnyCard() {
        let sortedCards = sorter.sort([TrainBoardingCard(identifier:"1B", origin:"Barcelona", destination:"Lisbon", seat:"34C"), TrainBoardingCard(identifier:"78A", origin:"Madrid", destination:"Barcelona", seat:"45B")])
        compareBordingCards(sortedCards, expectedCards: [TrainBoardingCard(identifier:"78A", origin:"Madrid", destination:"Barcelona", seat:"45B"), TrainBoardingCard(identifier:"1B", origin:"Barcelona", destination:"Lisbon", seat:"34C")])
    }
    
    func testItShouldLinkCardsByOriginDestination() {
        let cards = [TrainBoardingCard(identifier:"1B", origin:"Barcelona", destination: "Atenas", seat:"1"), TrainBoardingCard(identifier:"1B", origin:"Madrid", destination: "Barcelona", seat:"1"), BusBoardingCard(identifier:"1B", origin:"Lisboa", destination: "Madrid", seat:"2")]
        let sortedCards = sorter.sort(cards)
        compareBordingCards(sortedCards, expectedCards: [TrainBoardingCard(identifier:"1B", origin:"Lisboa", destination: "Madrid", seat:"2"), TrainBoardingCard(identifier:"1B", origin:"Madrid", destination: "Barcelona", seat:"1"), BusBoardingCard(identifier:"1B", origin:"Barcelona", destination: "Atenas", seat:"1")])
    }
    
    func compareBordingCards(actualCards:[BoardingCard], expectedCards:[BoardingCard]){
        for var i=0; i<expectedCards.count; i++ {
            XCTAssertTrue(actualCards[i] == expectedCards[i], "")
        }
    }
}
