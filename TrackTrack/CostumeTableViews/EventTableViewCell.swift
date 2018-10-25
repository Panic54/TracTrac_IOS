//
//  EventTableViewCell.swift
//  TracTrac
//
//  Created by Mads Finnerup on 25/10/2018.
//  Copyright © 2018 Mads Finnerup. All rights reserved.
//

import UIKit

class EventTableViewCell: UITableViewCell {

   
    @IBOutlet var flagImage: UIImageView!
    @IBOutlet var sportEmblem: UIImageView!
    @IBOutlet var dateImage: UIImageView!
    @IBOutlet var raceImage: UIImageView!
    @IBOutlet var competitorsImage: UIImageView!
    
    @IBOutlet var nameOfEvent: UILabel!
    @IBOutlet var sportLabel: UILabel!
    @IBOutlet var dateLabe: UILabel!
    @IBOutlet var competitorsLabel: UILabel!
    @IBOutlet var raceLabel: UILabel!
}
