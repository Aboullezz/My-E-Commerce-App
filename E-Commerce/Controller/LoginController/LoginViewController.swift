//
//  ViewController.swift
//  E-Commerce
//
//  Created by Mohamed Aboullezz on 01/02/2023.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailView: UIView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButtonPressed: UIButton!
    @IBAction func loginButtonAction(_ sender: UIButton) {
        goToTabBar()
    }
    @IBAction func didTappedSingup(_ sender: UIButton) {
        goToSignup()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        emailView.addLayer()
        passwordView.addLayer()
        loginButtonPressed.addLayer()
        title = "Login"
    }
    //    MARK: Methods:
    func goToSignup () {
        let storyboard = UIStoryboard(name: "Main_iPhone1", bundle: nil)
        let singupViewController = storyboard.instantiateViewController(withIdentifier: "SingupViewController")
        navigationController?.pushViewController(singupViewController, animated: true)
    }
    func goToTabBar () {
        let storyboard = UIStoryboard(name: "Main_iPhone1", bundle: nil)
        let tabBar = storyboard.instantiateViewController(withIdentifier: "TabBarController")
        let navigationBar = UINavigationController(rootViewController: tabBar)
        navigationBar.modalPresentationStyle = .fullScreen
        present(navigationBar, animated: true)
    }
}

