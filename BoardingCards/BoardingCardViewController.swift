
import UIKit

public class BoardingCardViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet public var tblBoardingCards: UITableView!
    @IBOutlet public var btnSort: UIButton!
    
    var boardingCards = [BoardingCard]()

    public override func viewDidLoad() {
        super.viewDidLoad()
        createBoardingCards()
    }

    public override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    public func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    public func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return boardingCards.count
    }
    
    public func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("boardingCardCell", forIndexPath: indexPath) as BoardingCardCell
        cell.configCell(boardingCards[indexPath.row])
        return cell
    }

    @IBAction public func pressedSortButton() {
        let sorter = BoardingCardSorter()
        boardingCards = sorter.sort(boardingCards)
        tblBoardingCards.reloadData()   
    }

    private func createBoardingCards(){
        boardingCards = [FlightBoardingCard(identifier: "SK22", origin: "London", destination: "New York JFK", seat: "7B", gate: "22", baggage: ""), FlightBoardingCard(identifier: "SK455", origin: "Gerona Airport", destination: "London", seat: "3A", gate: "45B", baggage: "344"), BusBoardingCard(identifier:"Airport Bus", origin:"Barcelona", destination: "Gerona Airport", seat:""), TrainBoardingCard(identifier:"78B", origin:"Madrid", destination: "Barcelona", seat:"45B")]
    }
}

