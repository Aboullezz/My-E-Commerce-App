//
//  MessagesTableViewCell.swift
//  E-Commerce
//
//  Created by Mohamed Aboullezz on 05/02/2023.
//

import UIKit

class MessagesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var productsImages: UIImageView!
    @IBOutlet weak var productsTitleLabel: UILabel!
    @IBOutlet weak var discribtionLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    //make image like circle o :
    override func layoutSubviews() {
        productsImages.layer.cornerRadius = productsImages.frame.height / 2
    }
}
