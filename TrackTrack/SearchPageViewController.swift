//
//  SearchPageViewController.swift
//  TracTrac
//
//  Created by Mads Finnerup on 19/11/2018.
//  Copyright © 2018 Mads Finnerup. All rights reserved.
//

import Foundation
import UIKit

class SearchPageViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet var table: UITableView!
    @IBOutlet var searchBar: UISearchBar!
    
    var searchArray = [Search]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpSearchList()
        fillView()
        print("viewDidLoad")
    }
    
    func fillView() {
        
        
    }
    
    func setUpSearchList () {
        
        searchArray.append(Search(emblem: "1", text1: "SuperSailing", catagory: .sailing))
        searchArray.append(Search(emblem: "2", text1: "SuperRunning", catagory: .running))
        searchArray.append(Search(emblem: "3", text1: "justNormalSailing", catagory: .sailing))
        searchArray.append(Search(emblem: "4", text1: "JustNormalRunning", catagory: .running))
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searchArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SearchCell") as? SearchCell  else
        {
       return UITableViewCell()
        }
        cell.text01?.text = searchArray[indexPath.row].text01
        cell.text02?.text = searchArray[indexPath.row].catagory.rawValue
        cell.emblem?.image = UIImage(named: "EuroSail")
        return cell
    }
}




