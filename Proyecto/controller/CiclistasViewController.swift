//
//  CiclistasViewController.swift
//  Proyecto
//
//  Created by Arnau Solans on 27/01/2020.
//  Copyright © 2020 DAM2T. All rights reserved.
//

import UIKit

class CiclistasViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var tableView: UITableView!
    
     override func viewDidLoad() {
           super.viewDidLoad()
           tableView.delegate = self
           tableView.dataSource = self
           tableView.register(UINib(nibName: "CyclistViewCell", bundle: nil), forCellReuseIdentifier: "CustomCell")
           tableView.allowsSelection = true
           tableView.separatorColor = .gray
           tableView.backgroundColor = .white
           // Do any additional setup after loading the view.
       }

       
          func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
              return 5
          }
          
          func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
              
            let cell = UITableViewCell()
             guard let customCell = tableView.dequeueReusableCell(withIdentifier: "CustomCell") as? CyclistViewCell else { return cell }
           customCell.nameCyclist.text = "Nombre"
           customCell.popuCyclist.text = "Popularidad"
           customCell.isLeader.text = "Leader"
           customCell.imageCyclist.image = UIImage(named: "imageCyclist")
              return customCell

          }
       func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
           return 120.0
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
