//
//  CiclistasViewController.swift
//  Proyecto
//
//  Created by Arnau Solans on 27/01/2020.
//  Copyright © 2020 DAM2T. All rights reserved.
//

import UIKit
import RealmSwift
import Floaty

class CiclistasViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, CyclistDelegate{
    func delegateMethod(text: String) {
        
    }
    
    
    @IBOutlet weak var tableView: UITableView!
    private var manager = BBDDManager.getInstance()
    public let button = Floaty()
    private var cyclistResult : Results<Cyclist>? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.allowsMultipleSelectionDuringEditing = false;
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "CyclistNewViewCell", bundle: nil), forCellReuseIdentifier: "CustomCell")
        tableView.allowsSelection = true
        tableView.separatorColor = .gray
        tableView.backgroundColor = .white
        tableView.tableFooterView = UIView()
        self.cyclistResult = manager.findCyclist()
        button.addItem("New Cyclist", icon: UIImage(named: "bike"), handler: {item in
            let cyclistDetail = DetailCyclistViewController(nibName: String(describing: DetailCyclistViewController.self), bundle: nil)
            self.navigationController?.pushViewController(cyclistDetail, animated: true)
        })
        button.openAnimationType = FloatyOpenAnimationType.pop
        self.view.addSubview(button)
        
        
        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cyclistResult?.count ?? 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        guard let customCell = tableView.dequeueReusableCell(withIdentifier: "CustomCell") as? CyclistNewViewCell else { return cell }
        customCell.nameCyclist.text = cyclistResult![indexPath.row].firstname + " " + cyclistResult![indexPath.row].lastname
        customCell.popuCyclist.text = "Popularity: "+String(cyclistResult![indexPath.row].popularity)
        if(cyclistResult![indexPath.row].leader){
            customCell.isLeader.text = "Leader"
        }else{
            customCell.isLeader.alpha = 0
        }
        customCell.imageCyclist.image = UIImage(named: "imageCyclist")
        return customCell
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120.0
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cyclistDetail = DetailCyclistViewController(nibName: String(describing: DetailCyclistViewController.self), bundle: nil)
        cyclistDetail.delegate = self
        cyclistDetail.cyclistId = cyclistResult![indexPath.row].id
        navigationController?.pushViewController(cyclistDetail, animated: true)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        tableView.beginUpdates()
        if editingStyle == .delete {
            
            // remove the item from the data model
            // delete the table view row
            tableView.deleteRows(at: [indexPath], with: .fade)
            var cyclist = cyclistResult![indexPath.row]
            manager.delete(object: cyclist)
            tableView.reloadData()
            tableView.endUpdates()
            
        } else if editingStyle == .insert {
            // Not used in our example, but if you were adding a new row, this is where you would do it.
        }
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
