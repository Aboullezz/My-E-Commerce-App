//
//  CategoriesCollectionViewCell.swift
//  E-Commerce
//
//  Created by Mohamed Aboullezz on 02/02/2023.
//

import UIKit

class CategoriesCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryNameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        //        cell.categoryNameLabel.isHidden = true
    }
}
