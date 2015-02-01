
import UIKit

public class BoardingCardViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet public var tblBoardingCards: UITableView!
    @IBOutlet public var btnSort: UIButton!
    
    var boardingCards = [BoardingCard]()

    public override func viewDidLoad() {
        super.viewDidLoad()
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
        return cell
    }

    @IBAction public func pressedSortButton() {
    }

}

