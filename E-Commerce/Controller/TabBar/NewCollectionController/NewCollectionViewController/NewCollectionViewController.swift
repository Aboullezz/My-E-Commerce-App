//
//  NewCollectionViewController.swift
//  E-Commerce
//
//  Created by Mohamed Aboullezz on 03/02/2023.
//

import UIKit

class NewCollectionViewController: UIViewController {
    
    @IBOutlet weak var subCategoriesCollectionView: UICollectionView!
    @IBOutlet weak var gridListButton: UIButton!
    @IBOutlet weak var productsCollectionView: UICollectionView!
    //    MARK: - Grid View & List View Button:
    @IBAction func didGridListPressed(_ sender: UIButton) {
        buttonListGridPressed()
    }
    //    MARK: - Grid View & List View Button Method:
    func buttonListGridPressed () {
        //        isList.toggle()
        isList = !isList
        let buttonListImages = UIImage(named: "list")
        let buttonGridImages = UIImage(named: "grid")
        let images = isList == true ? buttonGridImages : buttonListImages
        gridListButton.setImage(images, for: .normal)
        productsCollectionView.reloadData()
    }
    //    MARK: - SortBy PopUp Button:
    @IBOutlet weak var priceSortButton: UIButton!
    @IBAction func priceSortButtonPressed(_ sender: UIButton) {
        popUpTransition()
    }
    //MARK: - PopUpButton Animation Method:
    func popUpTransition () {
        let storyboard = UIStoryboard(name: "Main_iPhone1", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "SortByViewController")
        viewController.modalPresentationStyle = .overFullScreen
        let transition = CATransition()
        transition.duration = 0.2
        transition.type = .fade
        view.window?.layer.add(transition, forKey: kCATransition)
        present(viewController, animated: true)
    }
    //    MARK: - Global Var:
    var isList:Bool = true
    var images: [UIImage] = [UIImage(named: "launch")!,UIImage(named: "men")!,UIImage(named: "summer")!]
    var subCategoriesName:[String] = ["T-Shirt", "Crob Tops", "Sleeveless","Blouse","Shirt"]
//    var productModel: [ProductModel] = [ProductModel(id: 1, image: <#String#>, title: <#String#>, description: <#String#>, price: <#Double#>)]
    //    MARK: - viewDidLoad:
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCollectionView()
    }
    //    MARK: - Segue Code:
    func registerCollectionView() {
        //        MARK: - subCategoriesCollectionView Controller:
        subCategoriesCollectionView.register(UINib(nibName: "SubCatogriesCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "SubCatogriesCollectionViewCell")
        subCategoriesCollectionView.delegate = self
        subCategoriesCollectionView.dataSource = self
        //        MARK: - productListCollectionView Controller:
        productsCollectionView.register(UINib(nibName: "ProductListCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ProductListCollectionViewCell")
        //        MARK: - productGridCollectionView Controller:
        productsCollectionView.register(UINib(nibName: "ProductGridCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ProductGridCollectionViewCell")
        //        MARK: - call for delegate & data source for productsCollectionView:
        productsCollectionView.delegate = self
        productsCollectionView.dataSource = self
        
    }
}
//    MARK: - UICollectionViewDataSource Methods:
//NewCollectionViewController: inherit from typealias (in Typealias Model):
extension NewCollectionViewController: collectionView_Delegate_DataSource_FlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //        return subCategoriesName.count
        if collectionView == subCategoriesCollectionView {
            return 5
//            return productModel.count
        } else if collectionView == productsCollectionView {
            return 10
        } else {
            return 0
        }
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView {
        case subCategoriesCollectionView:
            let cell = subCategoriesCollectionView.dequeueReusableCell(withReuseIdentifier: "SubCatogriesCollectionViewCell", for: indexPath) as! SubCatogriesCollectionViewCell
            cell.categoryNameLabel.text = subCategoriesName[indexPath.row]
            return cell
        default:
            if isList == true {
                let cell = productsCollectionView.dequeueReusableCell(withReuseIdentifier: "ProductListCollectionViewCell", for: indexPath) as! ProductListCollectionViewCell
                return cell
            }else {
                let cell = productsCollectionView.dequeueReusableCell(withReuseIdentifier: "ProductGridCollectionViewCell", for: indexPath) as! ProductGridCollectionViewCell
                return cell
            }
        }
    }
    //    MARK: - UICollectionViewDelegate Methods:
    // open new page for item details when pressed:
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main_iPhone1", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "ProductsDetailsViewController")
        navigationController?.pushViewController(viewController, animated: true)
    }
}
//    MARK: - UICollectionViewDelegateFlowLayout Method:
extension NewCollectionViewController{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        switch collectionView {
        case subCategoriesCollectionView:
            let width = collectionView.frame.width
            let height = collectionView.frame.height - 16
            return CGSize(width: width / 3, height: height)
        default:
            if isList == true {
                let width = collectionView.frame.width
                return CGSize(width: width, height: 150)
            } else {
                let width = collectionView.frame.width
                return CGSize(width: width / 2, height: 236)
            }
        }
    }
    //    MARK: - Controll the Size of the Cells
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
