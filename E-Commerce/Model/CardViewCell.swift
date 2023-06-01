//
//  CardViewCell.swift
//  E-Commerce
//
//  Created by Mohamed Aboullezz on 05/02/2023.
//

import UIKit
//MARK: - try Class :
class CardViewCell: UIView {
    @IBInspectable var cornerRadius: CGFloat = 8
    @IBInspectable var shadowOffsetWidth: CGFloat = 2
    @IBInspectable var shadowOffsetHeight: CGFloat = 3
    @IBInspectable var shadowOpacity: CGFloat = 0.5
    @IBInspectable var shadowColor: UIColor = .gray
    @IBInspectable var boarderWidth: CGFloat = 0
    @IBInspectable var boarderColor: UIColor?
    
    override func layoutSubviews() {
        layer.cornerRadius = cornerRadius
        layer.shadowOffset = CGSize(width: shadowOffsetWidth, height: shadowOffsetHeight)
        layer.shadowOpacity = Float(shadowOpacity)
        layer.shadowColor = shadowColor.cgColor
        layer.borderWidth = boarderWidth
        layer.borderColor = boarderColor?.cgColor
        let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius)
        layer.shadowPath = shadowPath.cgPath
        
    }
    
}
