//
//  LoginViewController.swift
//  Proyecto
//
//  Created by Marc Pancorbo Montaño on 14/01/2020.
//  Copyright © 2020 DAM2T. All rights reserved.
//

import UIKit
import GoogleSignIn
class LoginViewController: UIViewController {

    @IBOutlet weak var loginButton: GIDSignInButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        GIDSignIn.sharedInstance().presentingViewController = self
               // Do any additional setup after loading the view.
           
           NotificationCenter.default.addObserver(self,
                                                  selector: #selector(LoginViewController.receiveToggleAuthUINotification(_:)),
                                                      name: NSNotification.Name(rawValue: "ToggleAuthUINotification"),
                                                    object: nil)
           }
           
           
           @objc func receiveToggleAuthUINotification(_ notification: NSNotification) {
               print(notification.userInfo!)
               let viewController = ViewController(nibName:String(describing: ViewController.self), bundle: nil)
               navigationController?.pushViewController(viewController, animated: true)
           }
        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

