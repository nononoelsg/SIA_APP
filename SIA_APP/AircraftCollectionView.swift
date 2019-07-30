//
//  AircraftCollectionView.swift
//  SIA_APP
//
//  Created by user on 30/7/19.
//  Copyright © 2019 spellworks. All rights reserved.
//

import UIKit

class AircraftCollectionView: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    
    @IBOutlet var collectionView: UICollectionView!
    
    var AircraftArray = [
        UIImage(named: "1"),
        UIImage(named: "2"),
        UIImage(named: "3"),
        UIImage(named: "4"),
        UIImage(named: "5"),
        UIImage(named: "6"),
        UIImage(named: "7"),
        UIImage(named: "8")]

    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.dataSource = self
        collectionView.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return AircraftArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.AircraftImage.image = AircraftArray[indexPath.row]
        
        return cell
    }
    

}

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var AircraftImage: UIImageView!
    
}
