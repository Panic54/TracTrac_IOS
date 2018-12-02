//
//  UserPageViewController.swift
//  TracTrac
//
//  Created by Iman Chelhi on 02/12/2018.
//  Copyright © 2018 Mads Finnerup. All rights reserved.
//

import Foundation
import UIKit

class UserPageViewController: UIViewController {
    
    
    @IBAction func logoutButton(_ sender: Any) {
    print("Logout button was pressed")
        self.performSegue(withIdentifier: "UserViewSegue", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}

