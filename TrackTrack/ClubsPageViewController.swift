//
//  ClubsPageViewController.swift
//  TracTrac
//
//  Created by Iman Chelhi on 22/11/2018.
//  Copyright © 2018 Mads Finnerup. All rights reserved.
//

import Foundation
import UIKit

private let reuseIdentifier = "clubsCell"

class ClubsPageViewController: UICollectionViewController {
    
    var clubs = [Club]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fillClubs()
        
        let width = collectionView!.frame.width / 3
        let layout = collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width: width, height: width)
    }
    
    func fillClubs() {
        let sampleClubs = [Club(image: UIImage(named: "ast")),
                            Club(image: UIImage(named: "ast")),
                            Club(image: UIImage(named: "ast")),
                            Club(image: UIImage(named: "ast")),
                            Club(image: UIImage(named: "ast")),
                            Club(image: UIImage(named: "ast")),
                            Club(image: UIImage(named: "ast")),
                            Club(image: UIImage(named: "ast"))]
        
    
        func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return clubs.count
    }
    
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ClubsCell
        
        // Configure the cell
        cell.clubsImageView.image = clubs[indexPath.row].image
        
        return cell
    }
    
    }
}
