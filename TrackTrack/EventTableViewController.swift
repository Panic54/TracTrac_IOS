//
//  EventTableViewController.swift
//  TracTrac
//
//  Created by Mads Finnerup on 25/10/2018.
//  Copyright © 2018 Mads Finnerup. All rights reserved.
//

import Foundation
import UIKit

class EventTableViewController: UITableViewController {
    var events = [Event]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fillView()
         print("viewDidLoad")
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return events.count
    }
  
    func fillView()  {
         print("FillView func")
        let sampleEvent = [Event(flagImage: UIImage(named: "EuroSail"), sportEmblem: UIImage (named: "EuroSail"), dateImage:  UIImage(named: "EuroSail"), raceImage: UIImage (named: "EuroSail"), competitorsImage: UIImage (named: "EuroSail"),
                                 nameOfEvent: "Test", sportLabel: "String", dateLabel: "Test", competitorsLabel: "test", raceLabel: "test")]
        
        events = sampleEvent.compactMap{$0}
    }
    override func tableView(_ tableView: UITableView, cellForRowAt
        indexPath: IndexPath) -> UITableViewCell {
         print("TableView func")
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "EventCell", for: indexPath) as! EventCell
        
        cell.flag?.image = events [indexPath.row].flagImage
        cell.compImage.image = events [indexPath.row].competitorsImage
        cell.dateImage?.image = events [indexPath.row].dateImage
        cell.raceImage?.image = events [indexPath.row].raceImage
        cell.sportFlag?.image = events[indexPath.row].sportEmblem
        
        cell.eventName?.text = events[indexPath.row].nameOfEvent
        cell.compLabel?.text = events[indexPath.row].competitorsLabel

        cell.dateLabel?.text = events[indexPath.row].dateLabel
        cell.sportLabel?.text = events[indexPath.row].sportLabel
        cell.raceLabel?.text = events[indexPath.row].raceLabel
        
       return cell
    }
}

