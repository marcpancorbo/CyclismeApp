//
//  TabBarController.swift
//  Proyecto
//
//  Created by Arnau Solans on 20/01/2020.
//  Copyright © 2020 DAM2T. All rights reserved.
//

import UIKit
import Foundation

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tabBar.backgroundColor = ThemeColor.stucomWhiteBar.HCColor
        tabBar.barTintColor = ThemeColor.stucomWhiteBar.HCColor
        tabBar.tintColor = ThemeColor.blueRibbon.HCColor
        tabBar.unselectedItemTintColor = ThemeColor.black.HCColor.withAlphaComponent(0.8)
        tabBar.isTranslucent = false
        
        tabBar.layer.shadowOffset = CGSize(width: 0, height: 0)
        tabBar.layer.shadowRadius = 0.5
        tabBar.layer.shadowColor = UIColor.gray.cgColor
        tabBar.layer.shadowOpacity = 1
        
        
        let mainVC = NavigatorViewController(nibName: String(describing: NavigatorViewController.self), bundle: nil);
        let mainNavigationController = UINavigationController(rootViewController: mainVC)
        mainVC.tabBarItem = UITabBarItem(title: NSLocalizedString("", comment: ""), image: UIImage(named: "bike"), tag: 0)
        
        let perfilVC = PerfilViewController()
        let perfilNavigationController = UINavigationController(rootViewController: perfilVC)
        perfilVC.tabBarItem = UITabBarItem(title: NSLocalizedString("", comment: ""), image: UIImage(named: "helmet"), tag: 1)
        
        let controllers = [mainVC, perfilVC]
        
        /*Añadir dinamicamente una opcion al tabbar
        if UserDefaults.standard.bool(forKey: Constants.KCompanyAccount) {
            let companiesVC = CompaniesBuilder.build()
            let companiesNavigationController = UINavigationController(rootViewController: companiesVC)
            companiesVC.tabBarItem = UITabBarItem(title: NSLocalizedString("company", comment: ""), image: UIImage(named: "companydocs"), tag: 4)
            controllers.append(companiesNavigationController)
        }*/
        
        viewControllers = controllers
    }
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        
    }
    
}
