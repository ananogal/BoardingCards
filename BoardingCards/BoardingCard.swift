
import Foundation

public class BoardingCard: NSObject{
    
    var boardIdentifier: String
    var origin: String
    var destination: String
    var seat: String?
    
    public init(identifier:String, origin: String, destination:String){
        self.boardIdentifier = identifier
        self.origin = origin
        self.destination = destination
    }
}

public func == (bordingCardA: BoardingCard, bordingCardB: BoardingCard) -> Bool {
    return bordingCardA.origin == bordingCardB.origin && bordingCardA.destination == bordingCardB.destination
            && bordingCardA.boardIdentifier == bordingCardB.boardIdentifier && bordingCardA.seat == bordingCardB.seat
}
