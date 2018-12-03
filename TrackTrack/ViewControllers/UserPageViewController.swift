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
    
   
    
    @IBAction func logoutButton(_ sender: Any) {
    print("Logout button was pressed")
        self.performSegue(withIdentifier: "UserViewSegue", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       /*
        //How to add records to coredata
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        let entity = NSEntityDescription.entity (forEntityName: "User", in: context)
        let newUser = NSManagedObject (entity: entity!, insertInto: context)
        
        newUser.setValue("Pani", forKey: "username")
        newUser.setValue("123", forKey: "password")
        newUser.setValue("Mads", forKey: "name")
        newUser.setValue("123@123.com", forKey: "email")
        //Add for save
        do {
            try context.save()
        } catch {
            print("Failed to save")
        } */
        fetchData()
        
    }
    
    func fetchData () {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let request = NSFetchRequest<NSFetchRequestResult> (entityName: "User")
        request.returnsObjectsAsFaults = false
        
        do {
            let result = try context.fetch(request)
            for data in result as! [NSManagedObject] {
                print(data.value(forKey: "username") as! String)
            }
        } catch {
            print("Failed")
        }
    }
    
    func saveData () {
        
        
    }
    
    
}

