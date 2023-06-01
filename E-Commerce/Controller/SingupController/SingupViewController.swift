//
//  SingupViewController.swift
//  E-Commerce
//
//  Created by Mohamed Aboullezz on 02/02/2023.
//

import UIKit

class SingupViewController: UIViewController {
    @IBOutlet weak var nameView: UIView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailView: UIView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var singupButtonPressed: UIButton!
    @IBAction func alreadyHaveAccountPressed(_ sender: UIButton) {
        goToLogin()
    }
    override func viewDidLoad() {
        nameView.addLayer()
        emailView.addLayer()
        passwordView.addLayer()
        singupButtonPressed.addLayer()
        title = "SingUp"
    }
    func goToLogin () {
        let loginStoryboard = UIStoryboard.init(name: "Main_iPhone1", bundle: nil)
        let loginViewController = loginStoryboard.instantiateViewController(withIdentifier: "LoginViewController")
        navigationController?.pushViewController(loginViewController, animated: true)
    }
}
