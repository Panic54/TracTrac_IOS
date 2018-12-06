//
//  Chair.swift
//  TracTrac
//
//  Created by Iman Chelhi on 02/12/2018.
//  Copyright © 2018 Mads Finnerup. All rights reserved.
//

import Foundation
import UIKit

class Club  {
    var image: UIImage
    
    init?(image: UIImage? = UIImage(named: "defaultImage")) {
        
        guard let clubsImage = image else {
            return nil
        }
        self.image = clubsImage
    }
}
