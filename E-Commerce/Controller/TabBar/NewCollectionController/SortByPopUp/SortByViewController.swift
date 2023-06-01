//
//  SortByViewController.swift
//  E-Commerce
//
//  Created by Mohamed Aboullezz on 05/02/2023.
//

import UIKit

class SortByViewController: UIViewController {
    //    MARK: - Try to Make PopUp By Outlet (Single Value) Label & View:
    //    @IBOutlet weak var popularView: UIView!
    //    @IBOutlet weak var popularLabel: UILabel!
    //    @IBOutlet weak var newestView: UIView!
    //    @IBOutlet weak var newestLabel: UILabel!
    //    @IBOutlet weak var customerReviewView: UIView!
    //    @IBOutlet weak var customerReviewLabel: UILabel!
    //    @IBOutlet weak var priceView: UIView!
    //    @IBOutlet weak var priceLabel: UILabel!
    //    MARK: - Try to Make PopUp By OutletCollection (List of Value) to all Labels & Views & Buttons:
    // Make Tag To Views & Labels & Buttons in StoryBoard
    @IBOutlet var sortViews: [UIView]!
    @IBOutlet var sortLabels: [UILabel]!
    @IBAction func sortButtonsPressed(_ sender: UIButton) {
        //        print(sender.tag)
//         Way number 1 -> try For Loop:
        //        for customLabels in sortLabels {
        //            if customLabels.tag == sender.tag {
        //                customLabels.textColor = .white
        //            } else {
        //                customLabels.textColor = .black
        //            }
        //        }
        // Way number 2 -> cluser {} , $0 mean indexPath Number 1:
        sortViews.forEach({$0.backgroundColor = .white})
        sortViews.first(where: {$0.tag == sender.tag})?.backgroundColor = .red
        
        sortLabels.forEach({$0.textColor = .black})
        sortLabels.first(where: {$0.tag == sender.tag})?.textColor = .white
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //        sortViews.first?.backgroundColor = .red
        //        sortLabels.first?.textColor = .white
    }
    override func viewWillAppear(_ animated: Bool) {
        UIView.animate(withDuration: 0.2) {
            self.view.backgroundColor = UIColor.black.withAlphaComponent(0.7)
        }
    }
    @IBAction func didPressedClose(_ sender: UIButton) {
        dismiss(animated: false)
    }
}
