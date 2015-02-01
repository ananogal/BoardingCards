
import Foundation

public class BusBoardingCard: BoardingCard {
    
    public init(identifier:String, origin: String, destination:String, seat:String){
        super.init(identifier: identifier, origin: origin, destination: destination)
        self.seat = seat
    }
}
