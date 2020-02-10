//
//  NavigatorViewController.swift
//  Proyecto
//
//  Created by Marc Pancorbo Montaño on 20/01/2020.
//  Copyright © 2020 DAM2T. All rights reserved.
//

import UIKit
import RealmSwift
class NavigatorViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, DetailDelegate {
    func delegateMethod(text: String) {
        
    }
    
    @IBOutlet weak var tableView: UITableView!
    private var manager = BBDDManager.getInstance()
    private var raceResult : Results<Race>? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "CustomViewCell", bundle: nil), forCellReuseIdentifier: "CustomCell")
        tableView.allowsSelection = true
        tableView.separatorColor = .gray
        tableView.backgroundColor = .white
        tableView.tableFooterView = UIView()

        self.raceResult = manager.findRaces()
        // Do any additional setup after loading the view.
    }

    
       func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return raceResult?.count ?? 2
        
    }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           
         let cell = UITableViewCell()
          guard let customCell = tableView.dequeueReusableCell(withIdentifier: "CustomCell") as? CustomViewCell else { return cell }
        customCell.event.text = raceResult![indexPath.row].name
        customCell.eventDescription.text = "Popularity: "+String(raceResult![indexPath.row].popularity)
    
        return customCell

       }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120.0
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let raceDetail = RaceDetailViewController(nibName: String(describing: RaceDetailViewController.self), bundle: nil)
        var cell = tableView.cellForRow(at: indexPath) as! CustomViewCell
        raceDetail.delegate = self
        raceDetail.raceName = cell.event.text!
        navigationController?.pushViewController(raceDetail, animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
