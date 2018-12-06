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
        
        let width = collectionView!.frame.width / 2
        let layout = collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width: width, height: width)
        
       // Club.layer.borderWidth = 10
       // UIImage.layer.borderColor = UIColor.black.cgColor
    }
    
    func fillClubs() {
        let sampleClubs = [Club(image: UIImage(named:"twentyfourhourfinale")),
                           Club(image: UIImage(named:"abeamconsulting")),
                           Club(image: UIImage(named: "boldhorizons")),
                            Club(image: UIImage(named: "cya")),
                            Club(image: UIImage(named: "cna")),
                            Club(image: UIImage(named: "cnsp")),
                            Club(image: UIImage(named: "dof")),
                            Club(image: UIImage(named: "fedo")),
                            Club(image: UIImage(named: "frederikogniko")),
                            Club(image: UIImage(named: "ifkgoteborg")),
                            Club(image: UIImage(named: "ifklidingo")),
                            Club(image: UIImage(named: "ifkmora")),
                            Club(image: UIImage(named: "knoxgs")),
                            Club(image: UIImage(named: "lbc")),
                            Club(image: UIImage(named: "lyc")),
                            Club(image: UIImage(named: "lm")),
                            Club(image: UIImage(named: "ms")),
                            Club(image: UIImage(named: "osloseil")),
                            Club(image: UIImage(named: "qmsc")),
                            Club(image: UIImage(named: "rdyu")),
                            Club(image: UIImage(named: "stg")),
                            Club(image: UIImage(named: "sandefjordseil")),
                            Club(image: UIImage(named: "scottishorien")),
                            Club(image: UIImage(named: "seahelp")),
                            Club(image: UIImage(named: "skovshoved")),
                            Club(image: UIImage(named: "ssonderborgyc")),
                            Club(image: UIImage(named: "spartacus")),
                            Club(image: UIImage(named: "surfski")),
                            Club(image: UIImage(named: "tvo")),
                            Club(image: UIImage(named: "usos")),
                            Club(image: UIImage(named: "zeil"))]
        
        for club in sampleClubs {
            if let club = club {
                clubs.append(club)
            }
        }
    }
   
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return clubs.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ClubsCell
        
        // Configure the cell
        cell.clubsImageView.image = clubs[indexPath.row].image
        
        return cell
    }
    
}
