//
//  TownDetailTableViewCell.swift
//  upstate_tow
//
//  Created by Jose Alarcon Chacon on 9/17/20.
//  Copyright © 2020 Jose Alarcon Chacon. All rights reserved.
//

import UIKit

class TownDetailTableViewCell: UITableViewCell {

    @IBOutlet weak var collectioView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectioView.delegate = self
        collectioView.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension TownDetailTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 7
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! TownDetailCollectionViewCell
//        cell.layer.cornerRadius = 4.0
//        cell.layer.borderWidth = 1.0
//        cell.layer.borderColor = UIColor.clear.cgColor
//        cell.layer.masksToBounds = false
//        cell.layer.shadowColor = UIColor.gray.cgColor
//        cell.layer.shadowOffset = CGSize(width: 0, height: 1.0)
//        cell.layer.shadowRadius = 4.0
//        cell.layer.shadowOpacity = 1.0
        cell.imageView.image_layout()
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 120, height: 120)
    }
}
