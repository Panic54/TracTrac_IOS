//
//  EventTableViewCell.swift
//  TracTrac
//
//  Created by Mads Finnerup on 25/10/2018.
//  Copyright © 2018 Mads Finnerup. All rights reserved.
//
import Foundation
import UIKit

class Event {
    
     var flagImage: UIImage
     var sportEmblem: UIImage
     var dateImage: UIImage
     var raceImage: UIImage
     var competitorsImage: UIImage
    
     var nameOfEvent: String
     var sportLabel: String
     var dateLabel: String
     var competitorsLabel: String
     var raceLabel: String
    
    init?(flagImage: UIImage? = UIImage(named: "defaultImage"), sportEmblem: UIImage? = UIImage(named: "defaultImage"), dateImage: UIImage? = UIImage(named: "defaultImage"), raceImage: UIImage? = UIImage(named: "defaultImage"), competitorsImage: UIImage? = UIImage(named: "defaultImage"),
         nameOfEvent: String, sportLabel: String, dateLabel: String, competitorsLabel: String, raceLabel: String) {
        
        guard !nameOfEvent.isEmpty || !sportLabel.isEmpty || !dateLabel.isEmpty || !competitorsLabel.isEmpty
            || !raceLabel.isEmpty  else {
            return nil
        }
        guard let flag = flagImage else {
            return nil
        }
        
        guard let emblem = sportEmblem else {
            return nil
        }
        guard let date = dateImage else {
            return nil
        }
        guard let race = raceImage else {
            return nil
        }
        guard let comp = competitorsImage else {
            return nil
        }
        self.flagImage = flag
        self.sportEmblem = emblem
        self.dateImage = date
        self.raceImage = race
        self.competitorsImage = comp
        
        self.nameOfEvent = nameOfEvent
        self.sportLabel = sportLabel
        self.dateLabel = dateLabel
        self.competitorsLabel = competitorsLabel
        self.raceLabel = raceLabel

    }
    
    
    
}
