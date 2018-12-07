//
//  SearchPageViewController.swift
//  TracTrac
//
//  Created by Mads Finnerup on 19/11/2018.
//  Copyright © 2018 Mads Finnerup. All rights reserved.
//

import Foundation
import UIKit

class SearchPageViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate {
    
    @IBOutlet var table: UITableView!
    @IBOutlet var searchBar: UISearchBar!
    @IBOutlet var tableView: UITableView!
    
    var searchArray = [Search]()
    var currentArray = [Search]()
 
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpSearchList()
        setUpSearchBar()
      
        print("viewDidLoad")
    }
    
    func setUpSearchList () {
        
        //Sailing Test
        searchArray.append(Search(emblem: "HomeImage01", text01: "SuperSailing", catagory: .sailing))
        searchArray.append(Search(emblem: "EuroSail", text01: "JustNormalSailing", catagory: .sailing))
        searchArray.append(Search(emblem: "frederikogniko", text01: "Sail With Frederik", catagory: .sailing))
        
        //Running Test
        searchArray.append(Search(emblem: "HomeImage02", text01: "SuperRunning", catagory: .running))
        searchArray.append(Search(emblem: "redbull", text01: "JustNormalRunning", catagory: .running))
        
        //Other Test
        searchArray.append(Search(emblem: "extreme", text01: "Bowling", catagory: .other))
        searchArray.append(Search(emblem: "stg", text01: "Snowboarding", catagory: .other))
        currentArray = searchArray
    }
    
    func setUpSearchBar (){
        //searchBar.delegate = self
    }
    
  
    // For the TableList
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currentArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "SearchCell") as! SearchCell      
        cell.text01?.text = currentArray[indexPath.row].text01
        cell.text02?.text = currentArray[indexPath.row].catagory.rawValue
        cell.emblem?.image = UIImage(named: searchArray[indexPath.row].emblem)
        
        return cell
    }
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 20
    }
    
    // For Search Bar
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        currentArray = searchArray.filter({sportType -> Bool in
            switch searchBar.selectedScopeButtonIndex {
            case 0:
                if searchText.isEmpty{return true}
                return sportType.catagory.rawValue.lowercased().contains(searchText.lowercased())
            case 1:
                if searchText.isEmpty{ return sportType.catagory == .running}
                return sportType.catagory.rawValue.lowercased().contains(searchText.lowercased()) &&
                    sportType.catagory == .running
            case 2:
                if searchText.isEmpty {return sportType.catagory == .sailing}
                return sportType.catagory.rawValue.lowercased().contains(searchText.lowercased()) &&
                sportType.catagory == .sailing
            default:
                return false
            }
        })
        currentArray = searchArray.filter({sportType -> Bool in
            switch searchBar.selectedScopeButtonIndex {
            case 0:
                if searchText.isEmpty{return true}
                return sportType.text01.lowercased().contains(searchText.lowercased())
               
            case 1:
              
                 return sportType.text01.lowercased().contains(searchText.lowercased())
            case 2:
               
                 return sportType.text01.lowercased().contains(searchText.lowercased())
            default:
                return false
            }
        })
        tableView.reloadData()
    }
    
    func searchBar(_ searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int) {
        switch selectedScope {
        case 0:
            currentArray = searchArray
        case 1:
            currentArray = searchArray.filter({ sportType -> Bool in
                sportType.catagory == SportType.sailing
            })
        case 2:
            currentArray = searchArray.filter({ sportType -> Bool in
                sportType.catagory == SportType.running
            })
        default:
            break
        }
        tableView.reloadData()
    }
}




