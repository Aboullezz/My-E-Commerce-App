//
//  ProductsDetailsViewController.swift
//  E-Commerce
//
//  Created by Mohamed Aboullezz on 07/02/2023.
//

import UIKit

class ProductsDetailsViewController: UIViewController {
    
    @IBOutlet weak var productImagesCollectionView: UICollectionView!
    @IBOutlet weak var recommendProductCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCollectionView()
    }
    //        MARK: - ProductsDetailsViewController:
    func registerCollectionView () {
        productImagesCollectionView.register(UINib(nibName: "ProductsDetailsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ProductsDetailsCollectionViewCell")
        productImagesCollectionView.delegate = self
        productImagesCollectionView.dataSource = self
        recommendProductCollectionView.register(UINib(nibName: "RecommendProductCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "RecommendProductCollectionViewCell")
        recommendProductCollectionView.delegate = self
        recommendProductCollectionView.dataSource = self
    }
}
//    MARK: - UICollectionViewDataSource Methods:
//NewCollectionViewController: inherit from typealias (in Typealias Model):
extension ProductsDetailsViewController: collectionView_Delegate_DataSource_FlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case productImagesCollectionView:
            return 3
        default:
            return 6
        }
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView {
        case productImagesCollectionView :
            let cell = productImagesCollectionView.dequeueReusableCell(withReuseIdentifier: "ProductsDetailsCollectionViewCell", for: indexPath) as! ProductsDetailsCollectionViewCell
            return cell
        default:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RecommendProductCollectionViewCell", for: indexPath)
            return cell
        }
    }
}
extension ProductsDetailsViewController {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        switch collectionView {
        case productImagesCollectionView:
            let width = collectionView.frame.width * 0.8
            let height = collectionView.frame.height
            return CGSize(width: width, height: height)
        default:
            let width = collectionView.frame.width / 2
            let height = collectionView.frame.height
            return CGSize(width: width, height: height)
        }
    }
}
