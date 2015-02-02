
import UIKit

public class BoardingCardCell: UITableViewCell {

    @IBOutlet public var lblCardIdentifier: UILabel!
    @IBOutlet public var lblOrigin: UILabel!
    @IBOutlet public var lblDestination: UILabel!
    @IBOutlet public var lblRoute: UILabel!
    
    public func configCell(card:BoardingCard){
        self.lblCardIdentifier.text = card.boardIdentifier
        self.lblOrigin.text = card.origin
        self.lblDestination.text = card.destination
        self.lblRoute.text = ""
        if(!card.seat!.isEmpty) {
            self.lblRoute.text = "Seat " + card.seat!
        }
        
        if(card.isKindOfClass(FlightBoardingCard)) {
            let flightCard = card as FlightBoardingCard
            self.lblRoute.text = "Gate " + flightCard.gate + ", Seat " + flightCard.seat!
            if(!flightCard.baggageDeposit!.isEmpty) {
                self.lblRoute.text = self.lblRoute.text! + " Baggage drop at ticket counter " + flightCard.baggageDeposit!
            }
            else {
                self.lblRoute.text = self.lblRoute.text! + " Baggage will be automatically transferred from your last leg."
            }
        }
    }
}
