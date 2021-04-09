//
//  ComputerViewController.swift
//  Emojee
//
//  Created by Dannyyyyyyy Zhao on 4/7/21.
//

import UIKit

class ComputerViewController: UIViewController, UITableViewDelegate, UITableViewDataSource,UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var favoriteButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    let dataModel = generate2DArrayofColor(withRows: 20, itemInEachRow: 15)
    override func viewDidLoad() {
        super.viewDidLoad()
        favoriteButton.layer.cornerRadius = 20
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataModel.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tcell", for: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if let tableViewCell = cell as? CustomTableViewCell {
            tableViewCell.setCollectionViewDelegate(delegate: self, forRow: indexPath.row)
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
extension ComputerViewController: UICollectionViewDelegate, UICollectionViewDataSource {
   
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataModel[collectionView.tag].count
    }

    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ccell", for: indexPath) as? CustomCollectionViewCell {
            let imageName = dataModel[collectionView.tag][indexPath.row]
            cell.imageView?.image = UIImage(named: "\(imageName).png")
            cell.layer.cornerRadius = cell.bounds.height / 2.0
            
            //cell.toggleSelected()
            return cell
        }
        return UICollectionViewCell()
    }
}

// helper function
func generate2DArrayofColor(withRows: Int, itemInEachRow: Int) -> [[Int]] {
    let numberOfRows = withRows
    let numberOfItemsInEachRow = itemInEachRow
    var color2DArray = [[Int]]()
    
    for _ in 1...numberOfRows {
        var singleArray = [Int]()
        for _ in 1...numberOfItemsInEachRow {
            singleArray.append(Int(arc4random_uniform(50) + 1))
        }
        color2DArray.append(singleArray)
    }
    return color2DArray
}





    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


