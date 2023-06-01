//
//  ChatListTableViewCell.swift
//  E-Commerce
//
//  Created by Mohamed Aboullezz on 08/02/2023.
//

import UIKit

class ChatListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var chatStackView: UIStackView!
    @IBOutlet weak var messageLabel:UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
//        messageBubble.layer.cornerRadius = messageBubble.frame.size.height / 10
    }
}
