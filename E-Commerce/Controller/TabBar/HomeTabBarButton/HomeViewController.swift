//
//  HomeViewController.swift
//  E-Commerce
//
//  Created by Mohamed Aboullezz on 02/02/2023.
//

import UIKit

class HomeViewController: UIViewController {
    var images: [UIImage] = [UIImage(named: "launch")!,UIImage(named: "men")!,UIImage(named: "summer")!]
    var names: [String] = ["New Collection", "Men's Hoodies", "Summer Sale"]
    @IBOutlet weak var homeCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCollectionView()
    }
    //    MARK: - Sigue GoTo CategoriesCollectionViewCell:
    func registerCollectionView () {
        homeCollectionView.register(UINib(nibName: "CategoriesCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CategoriesCollectionViewCell")
        homeCollectionView.delegate = self
        homeCollectionView.dataSource = self
        homeCollectionView.reloadData()
    }
    //    MARK: - To Navigat Back to Home of TabBar:
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(false, animated: false)
    }
    //    MARK: - To Avoid make home of TabBar Has a Navigation:
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
}
//MARK: - UICollectionViewDelegate (make Action) Methods, UICollectionViewDataSource (Put Data) Methods:
//HomeViewController: inherit from typealias (in Typealias Model):
extension HomeViewController: collectionView_Delegate_DataSource_FlowLayout {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let storyboard = UIStoryboard(name: "Main_iPhone1", bundle: nil)
            let viewController = storyboard.instantiateViewController(withIdentifier: "NewCollectionViewController")
            navigationController?.pushViewController(viewController, animated: true)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoriesCollectionViewCell", for: indexPath) as! CategoriesCollectionViewCell
        cell.categoryImage.image = images[indexPath.row]
        cell.categoryNameLabel.text = names[indexPath.row]
        return cell
    }
}
//MARK: - UICollectionViewDelegateFlowLayout ( Control The Size of the Cell ) Methods:
extension HomeViewController {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.width
        let height = (collectionView.frame.height / 2) - 24
        switch indexPath.row {
        case 0:
            return CGSize(width: width, height: height)
        default:
            return CGSize(width: width / 2, height: height)
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.zero
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}

