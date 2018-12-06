//
//  LoginPageViewController.swift
//  TracTrac
//
//  Created by Iman Chelhi on 02/12/2018.
//  Copyright © 2018 Mads Finnerup. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class LoginPageViewController: UIViewController {

    @IBOutlet var email: UITextField!
    
    @IBOutlet var password: UITextField!
    
    @IBAction func loginButton(_ sender: Any) {
        print("Button was pressed, inshallah")
        //print(password.text) as! String
        print(fetchData(password: password.text as! String, email: email.text as! String))
        if (fetchData(password: password.text as! String, email: email.text as! String)) {
            print("nope")
            performSegue(withIdentifier: "LoginViewSegue", sender: self)
            
            self.performSegue(withIdentifier: "LoginViewSegue", sender: self)
        }
          
        else if (email.text != "" || password.text != "" && !fetchData(password: password.text as! String, email: email.text as! String)) {
            saveData(email: email.text as! String, password: password.text as! String)
            print("saving User")
            self.performSegue(withIdentifier: "LoginViewSegue", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //New Code another try
        guard let textSender = segue.destination as? UserPageViewController else {
            return
        }
        textSender.emailString = email.text!
        textSender.passwordString = password.text!
        
        //Old code
        //let userController = segue.destination as! UserPageViewController
        //userController.emailString = email.text!
        //userController.passwordString = password.text!
    }
    
    @IBAction func emailAction(_ sender: Any) {
    }
    
    
    @IBAction func passwordAction(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
         print("View has loaded")
    }
    
    func saveData ( email: String, password: String) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        let entity = NSEntityDescription.entity (forEntityName: "User", in: context)
        let newUser = NSManagedObject (entity: entity!, insertInto: context)
        
        newUser.setValue(email, forKey: "email")
        newUser.setValue(password, forKey: "password")
        
        do {
            try context.save()
        } catch {
            print("Failed to save")
        }
    }
    
    func fetchData (password: String, email: String) -> Bool {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let request = NSFetchRequest<NSFetchRequestResult> (entityName: "User")
      
        request.returnsObjectsAsFaults = false
        
        do {
            let result = try context.fetch(request)
            //print(password as! String);
            for data in result as! [NSManagedObject] {
                if (data.value(forKey: "email") != nil && data.value(forKey: "email") as! String == email){
                    if (data.value(forKey: "password") != nil && data.value(forKey: "password") as! String == password) {
                        return true
                    }
                }
               // context.delete(data)
            }
        } catch {
            print("Failed")
            return false
            
        }
        
        // for deleting
        /*
        do {
            try context.save()
        } catch {
            print("Failed to save")
        }
 */
         return false;
    
    }
    
    
}

