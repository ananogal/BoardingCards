
import UIKit
import XCTest
import BoardingCards

class BoardingCardCellTests: XCTestCase {

    var boardingCell = BoardingCardCell()
    
    override func setUp() {
        super.setUp()
        let storyboard = UIStoryboard(name: "Main", bundle: nil);
        let controller = storyboard.instantiateViewControllerWithIdentifier("BoardingCardViewController") as BoardingCardViewController
        let view = controller.view
        boardingCell = controller.tblBoardingCards.dequeueReusableCellWithIdentifier("boardingCardCell") as BoardingCardCell
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testThatItShouldConnectOutletCardIdentifierLabel(){
        XCTAssertNotNil(boardingCell.lblCardIdentifier, "")
    }
    
    func testThatItShouldConnectOutletOriginLabel(){
        XCTAssertNotNil(boardingCell.lblOrigin, "")
    }
    
    func testThatItShouldConnectOutletDestinationLabel(){
        XCTAssertNotNil(boardingCell.lblDestination, "")
    }
    
    func testThatItShouldConnectOutletRouteLabel(){
        XCTAssertNotNil(boardingCell.lblRoute, "")
    }
    
}
