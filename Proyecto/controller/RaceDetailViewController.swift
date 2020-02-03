//
//  RaceDetailViewController.swift
//  Proyecto
//
//  Created by Marc Pancorbo Montaño on 03/02/2020.
//  Copyright © 2020 DAM2T. All rights reserved.
//

import UIKit
protocol DetailDelegate {
    func delegateMethod(text : String)
}
class RaceDetailViewController: UIViewController {

    
    private var manager = BBDDManager.getInstance()
    public var raceName : String = ""
    private var race: Race? = nil
    public var delegate : DetailDelegate?
    @IBOutlet weak var titleDetail: UILabel!
    @IBOutlet weak var popularityDetail: UILabel!
    @IBOutlet weak var imageDetail: UIImageView!
    @IBOutlet weak var country: UILabel!
    @IBOutlet weak var roads: UILabel!
    @IBOutlet weak var kilometer: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        race = manager.getRaceByName(name: raceName)
        titleDetail.text = race?.name
        popularityDetail.text = String(race!.popularity)

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

}
