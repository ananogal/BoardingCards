
import Foundation

class BoardingCard{
    
    var boardIdentifier: String
    var origin: String
    var destination: String
    var seat: String?
    
    init(identifier:String, origin: String, destination:String){
        self.boardIdentifier = identifier
        self.origin = origin
        self.destination = destination
    }
}
