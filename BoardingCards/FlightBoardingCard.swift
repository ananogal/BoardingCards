
import Foundation

class FlightBoardingCard: BoardingCard {
    
    var gate: String
    var baggageDeposit: String
    
    init(identifier:String, origin: String, destination:String, gate:String, baggage:String, seat:String){
        self.gate = gate
        self.baggageDeposit = baggage
        super.init(identifier: identifier, origin: origin, destination: destination)
        self.seat = seat
    }
}
