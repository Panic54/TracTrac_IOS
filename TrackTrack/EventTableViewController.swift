//
//  EventTableViewController.swift
//  TracTrac
//
//  Created by Mads Finnerup on 25/10/2018.
//  Copyright © 2018 Mads Finnerup. All rights reserved.
//

import Foundation
import UIKit

struct cellData {
    let cell : Int!
    let eventName : String!
    let sportName : String!
    let date : String!
    let races : String!
    let competitors : String!
    
    let flagImage : UIImage!
    let sportImage : UIImage!
    let dateImage : UIImage!
    let raceImage : UIImage!
    let compotitorsImage : UIImage!
}

class EventTableViewController: UITableViewController {
    var arrayOfCellData = [cellData]()
    
    override func viewDidLoad() {
    
        arrayOfCellData = [cellData(cell: 1, eventName: "EuroSail 2018", sportName: "Sailing", date: "20-27.2018", races: "48 Races", competitors: "12 Competitors", flagImage: #imageLiteral(resourceName: "Eurosail.png"), sportImage: #imageLiteral(resourceName: "Eurosail.png"), dateImage: #imageLiteral(resourceName: "Eurosail.png"), raceImage: #imageLiteral(resourceName: "Eurosail.png"), compotitorsImage: #imageLiteral(resourceName: "Eurosail.png"))]
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
   return arrayOfCellData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if arrayOfCellData[indexPath.row].cell == 1{
            let cell = Bundle.main.loadNibNamed("EventTableViewCell", owner: self, options: nil)?.first as! EventTableViewCell
            cell.flagImage.image = arrayOfCellData[indexPath.row].flagImage
            cell.sportLabel.text = arrayOfCellData[indexPath.row].sportName
            cell.nameOfEvent.text = arrayOfCellData[indexPath.row].eventName
            cell.dateLabe.text = arrayOfCellData[indexPath.row].date
            cell.competitorsLabel.text = arrayOfCellData[indexPath.row].competitors
            cell.raceLabel.text = arrayOfCellData[indexPath.row].races
            return cell
            
        }
        else {
            let cell = Bundle.main.loadNibNamed("EventTableViewCell", owner: self, options: nil)?.first as! EventTableViewCell
            cell.flagImage.image = arrayOfCellData[indexPath.row].flagImage
            cell.sportLabel.text = arrayOfCellData[indexPath.row].sportName
            cell.nameOfEvent.text = arrayOfCellData[indexPath.row].eventName
            cell.dateLabe.text = arrayOfCellData[indexPath.row].date
            cell.competitorsLabel.text = arrayOfCellData[indexPath.row].competitors
            cell.raceLabel.text = arrayOfCellData[indexPath.row].races
            return cell
        }
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
    
    
}

