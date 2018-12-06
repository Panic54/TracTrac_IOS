//
//  UserPageViewController.swift
//  TracTrac
//
//  Created by Iman Chelhi on 02/12/2018.
//  Copyright © 2018 Mads Finnerup. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class UserPageViewController: UIViewController {
    
    @IBOutlet var password: UITextField!    
    @IBOutlet var email: UITextField!
    
    
    var emailString = String()
    var passwordString = String()
    
    @IBAction func logoutButton(_ sender: Any) {
    print("Logout button was pressed")
        self.performSegue(withIdentifier: "UserViewSegue", sender: self)
    }
    
    @IBAction func changeUsername(_ sender: UITextField) {
       print(sender.text!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("ViewDidLoad")
        print(emailString)
        print(passwordString)
        
        email.text = emailString
        password.text = passwordString
        confiqureText()
    }
    
    func confiqureText() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let label = email {
                label.text = detail.text
            }
        }
    }
    
    var detailItem: UITextField? {
        didSet {
            print("detailItem")
            confiqureText ()
        }
    }
    /*
    func confiqureText () {
        if let detail = detailItem {
            print("detail sat")
            if let textField = email {
                print("textfield sat")
                textField.text = detail.text
            }
        }
    }
    */
    func fetchData () {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let request = NSFetchRequest<NSFetchRequestResult> (entityName: "User")
        request.returnsObjectsAsFaults = false
        
        do {
            let result = try context.fetch(request)
            for data in result as! [NSManagedObject] {
                    print(data.value(forKey: "email") as? String)
            }
            
        } catch {
            print("Failed")
        }
    
    }
    
    func saveData () {
        
        
    }
    
    
}

