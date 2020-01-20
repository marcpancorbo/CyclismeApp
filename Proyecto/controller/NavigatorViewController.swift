//
//  NavigatorViewController.swift
//  Proyecto
//
//  Created by Marc Pancorbo Montaño on 20/01/2020.
//  Copyright © 2020 DAM2T. All rights reserved.
//

import UIKit

class NavigatorViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .blue
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "CustomViewCell", bundle: nil), forCellReuseIdentifier: "CustomCell")
        tableView.allowsSelection = true
        tableView.tableFooterView = UIView()
        tableView.separatorColor = .gray
        tableView.separatorInset.left = 0
        tableView.backgroundColor = .white
        // Do any additional setup after loading the view.
    }

    
       func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return 8
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           
         let cell = UITableViewCell()
          guard let customCell = tableView.dequeueReusableCell(withIdentifier: "CustomCell") as? CustomViewCell else { return cell }
           return customCell

       }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
      return 120
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
