
import Foundation

public class FlightBoardingCard: BoardingCard {
    
    var gate: String
    var baggageDeposit: String?
    
    public init(identifier:String, origin: String, destination:String, seat:String, gate:String, baggage:String?){
        self.gate = gate
        self.baggageDeposit = baggage
        super.init(identifier: identifier, origin: origin, destination: destination)
        self.seat = seat
        self.boardIdentifier = "Flight " + self.boardIdentifier
    }
}

public func == (bordingCardA: FlightBoardingCard, bordingCardB: FlightBoardingCard) -> Bool {
    return bordingCardA.origin == bordingCardB.origin && bordingCardA.destination == bordingCardB.destination
        && bordingCardA.boardIdentifier == bordingCardB.boardIdentifier && bordingCardA.seat == bordingCardB.seat
        && bordingCardA.gate == bordingCardB.gate && bordingCardA.baggageDeposit == bordingCardB.baggageDeposit
}