//
//  EXUIView.swift
//  E-Commerce
//
//  Created by Mohamed Aboullezz on 02/02/2023.
//

import UIKit
//MARK: - try extinsion :
extension UIView {
    func addLayer () {
        self.layer.cornerRadius = 10
        self.layer.shadowColor = UIColor.lightGray.cgColor
        self.layer.shadowOffset = CGSize(width: 3, height: 3)
        let shadowPath = UIBezierPath(roundedRect: self.bounds, cornerRadius: 10)
        self.layer.shadowPath = shadowPath.cgPath
        self.layer.shadowOpacity = 0.5
        self.layer.borderColor = UIColor.lightGray.cgColor
    }
}
