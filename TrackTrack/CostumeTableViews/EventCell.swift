//
//  EventCell.swift
//  TracTrac
//
//  Created by Mads Finnerup on 08/11/2018.
//  Copyright © 2018 Mads Finnerup. All rights reserved.
//

import Foundation
import UIKit

class EventCell: UITableViewCell {
    
    @IBOutlet var flag: UIImageView!
    
    @IBOutlet var sportFlag: UIImageView!
    
    @IBOutlet var compImage: UIImageView!
    @IBOutlet var dateImage: UIImageView!
    @IBOutlet var raceImage: UIImageView!
    
    
    @IBOutlet var eventName: UILabel!
    
    @IBOutlet var sportLabel: UILabel!
    
    @IBOutlet var raceLabel: UILabel!
    
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var compLabel: UILabel!
}
