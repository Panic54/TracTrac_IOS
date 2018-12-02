//
//  LoginPageViewController.swift
//  TracTrac
//
//  Created by Iman Chelhi on 02/12/2018.
//  Copyright © 2018 Mads Finnerup. All rights reserved.
//

import Foundation
import UIKit

class LoginPageViewController: UIViewController {
    
    @IBAction func loginButton(_ sender: Any) {
        print("Button was pressed, inshallah")
        self.performSegue(withIdentifier: "LoginViewSegue", sender: self)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
         print("View has loaded")
    }
    
}

