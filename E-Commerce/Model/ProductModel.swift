//
//  ProductModel.swift
//  E-Commerce
//
//  Created by Mohamed Aboullezz on 08/02/2023.
//

import UIKit
struct ProductModel {
    var id: Int
    var image: String
    var title: String
    var description: String
    var price: Double
    var isFavourite: Bool
    
    init(id: Int, image: String, title: String,
         description: String, price: Double, isFavourite: Bool = false) {
        self.id = id
        self.image = image
        self.title = title
        self.description = description
        self.price = price
        self.isFavourite = isFavourite
    }
}
