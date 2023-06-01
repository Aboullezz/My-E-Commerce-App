//
//  ProductGridCollectionViewCell.swift
//  E-Commerce
//
//  Created by Mohamed Aboullezz on 05/02/2023.
//

import UIKit

class ProductGridCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var productImages: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        productImages.layer.cornerRadius = 10
    }
}
