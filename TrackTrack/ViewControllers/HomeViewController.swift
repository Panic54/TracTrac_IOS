//
//  HomeViewController.swift
//  TracTrac
//
//  Created by Mads Finnerup on 26/11/2018.
//  Copyright © 2018 Mads Finnerup. All rights reserved.
//

import Foundation
import UIKit
class HomeViewController: UITableViewController {
    
    var home = [Home]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fillView()
        print("viewDidLoad")
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return home.count
    }
    
    func fillView()  {
        print("FillView func")
        home.append(Home(pictur: "sky", text01: "test01"))
        home.append(Home(pictur: "HomeImage02", text01: "test02"))
        //let sampleHome = [Home(pictur:"EuroSail", text01: "Test"), ]
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt
        indexPath: IndexPath) -> UITableViewCell {
        print("TableView func")
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeCell", for: indexPath) as! HomeCell
        
        print("test this")
        
        cell.homePicture?.image = UIImage(named: home[indexPath.row].pictur)
        cell.textField.text = home [indexPath.row].text01
       
        return cell
    }
    
}

