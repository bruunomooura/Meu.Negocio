//
//  ViewController.swift
//  Meu.Negócio
//
//  Created by Bruno Moura on 25/05/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    var loginScreen: LoginScreen?

    override func loadView() {
        loginScreen = LoginScreen()
        view = loginScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

