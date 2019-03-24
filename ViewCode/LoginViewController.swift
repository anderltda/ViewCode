//
//  LoginViewController.swift
//  ViewCode
//
//  Created by Usuário Convidado on 23/03/19.
//  Copyright © 2019 FIAP. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, LoginViewDelegate {
    
    func buttonClicked() {
        print("Botão clicado!!!")
    }
    

    override func loadView() {
        view = LoginView(delegate: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
