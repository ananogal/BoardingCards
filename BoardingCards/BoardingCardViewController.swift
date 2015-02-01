//
//  ViewController.swift
//  BoardingCards
//
//  Created by Ana Nogal on 01/02/2015.
//  Copyright (c) 2015 AnaNogal. All rights reserved.
//

import UIKit

public class BoardingCardViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet public var tblBoardingCards: UITableView!
    @IBOutlet public var btnSort: UIButton!
    

    public override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    public override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    public func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    public func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    public func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("boardingCardCell", forIndexPath: indexPath) as UITableViewCell
        return cell
    }

    @IBAction public func pressedSortButton() {
        
    }
}

