//
//  Search.swift
//  TracTrac
//
//  Created by Mads Finnerup on 22/11/2018.
//  Copyright © 2018 Mads Finnerup. All rights reserved.
//

import Foundation
class Search  {
    
    let emblem: String
    let text01: String
    let catagory: SportType
    
    init(emblem: String,
         text01: String, catagory: SportType) {
        
        self.emblem = emblem
        self.text01 = text01
        self.catagory = catagory
    }
}

enum SportType: String {
    case sailing = "Sailing"
    case running = "Running"
}
