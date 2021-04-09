//
//  CustomTableViewCell.swift
//  Emojee
//
//  Created by Dannyyyyyyy Zhao on 4/7/21.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    
    func setCollectionViewDelegate<D: UICollectionViewDelegate & UICollectionViewDataSource>(delegate: D, forRow row: Int){
        collectionView.delegate = delegate
        collectionView.dataSource = delegate
        collectionView.tag = row
        collectionView.reloadData()
    }
}
