//
//  ViewController.swift
//  UF2Pract1
//
//  Created by Professor on 26/11/2019.
//  Copyright © 2019 DAM2T. All rights reserved.
//

import UIKit
import GoogleSignIn

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        guard let customCell = tableView.dequeueReusableCell(withIdentifier: "CustomCell") as? TeamViewCell else { return cell }
        customCell.teamName.text = "Team"
        customCell.teamCountry.text = "Country"
        customCell.teamManager.text = "Manager"
        return customCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120.0
    }
    
    @IBOutlet weak var teamTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        teamTableView.dataSource = self
        teamTableView.delegate = self
        teamTableView.register(UINib(nibName: "TeamViewCell", bundle: nil), forCellReuseIdentifier: "CustomCell")
        teamTableView.allowsSelection = true
        teamTableView.separatorColor = .gray
        teamTableView.backgroundColor = .white
        // Do any additional setup after loading the view.
    }

}

