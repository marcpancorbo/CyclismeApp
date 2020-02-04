//
//  ViewController.swift
//  UF2Pract1
//
//  Created by Professor on 26/11/2019.
//  Copyright © 2019 DAM2T. All rights reserved.
//

import UIKit
import GoogleSignIn
import RealmSwift
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teamResult?.count ?? 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        guard let customCell = tableView.dequeueReusableCell(withIdentifier: "CustomCell") as? TeamViewCell else { return cell }
        customCell.teamName.text = "Team: "+teamResult![indexPath.row].name
        customCell.teamCountry.text = "Country: "+teamResult![indexPath.row].country
        customCell.teamManager.text = "Manager: "+teamResult![indexPath.row].manager
        return customCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120.0
    }
    
    @IBOutlet weak var teamTableView: UITableView!
    private var manager = BBDDManager.getInstance()
    private var teamResult : Results<Team>? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        teamTableView.dataSource = self
        teamTableView.delegate = self
        teamTableView.register(UINib(nibName: "TeamViewCell", bundle: nil), forCellReuseIdentifier: "CustomCell")
        teamTableView.allowsSelection = true
        teamTableView.separatorColor = .gray
        teamTableView.backgroundColor = .white
        self.teamResult = manager.findTeams()
        // Do any additional setup after loading the view.
    }

}

