//
//  BoardingCardsTests.swift
//  BoardingCardsTests
//
//  Created by Ana Nogal on 01/02/2015.
//  Copyright (c) 2015 AnaNogal. All rights reserved.
//

import UIKit
import XCTest
import BoardingCards

class BoardingCardViewControllerTests: XCTestCase {
    
    var controller = BoardingCardViewController()
    
    override func setUp() {
        super.setUp()
        let storyboard = UIStoryboard(name: "Main", bundle: nil);
        controller = storyboard.instantiateViewControllerWithIdentifier("BoardingCardViewController") as BoardingCardViewController
        let view = controller.view
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testThatItShouldConnectOutletBoardinCardsTable(){
        XCTAssertNotNil(controller.tblBoardingCards, "")
    }
    
    func testThatItShouldConnectOutletSortButton(){
        XCTAssertNotNil(controller.btnSort, "")
    }
    
    func testThatItShouldConnectActionForAutomaticLocationButton() {
        let actions = controller.btnSort.actionsForTarget(controller, forControlEvent: UIControlEvents.TouchUpInside)
        let action = actions!.first as String
        
        XCTAssertEqual(action, "pressedSortButton", "")
    }
}
