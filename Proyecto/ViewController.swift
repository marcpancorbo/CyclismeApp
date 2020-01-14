//
//  ViewController.swift
//  UF2Pract1
//
//  Created by Professor on 26/11/2019.
//  Copyright © 2019 DAM2T. All rights reserved.
//

import UIKit
import GoogleSignIn

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        // Do any additional setup after loading the view.
    }


    @IBAction func signOut(_ sender: Any) {
        GIDSignIn.sharedInstance()?.signOut()
        let navigationController = UINavigationController(rootViewController: LoginViewController())
        self.navigationController?.popToRootViewController(animated: true)
    }
}

