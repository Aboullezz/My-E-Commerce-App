//
//  SubCatogriesCollectionViewCell.swift
//  E-Commerce
//
//  Created by Mohamed Aboullezz on 04/02/2023.
//

import UIKit

class SubCatogriesCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var categoryNameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        cardView.layer.cornerRadius = 8
    }
}
