//
//  DetailCyclistViewController.swift
//  Proyecto
//
//  Created by Arnau Solans on 04/02/2020.
//  Copyright © 2020 DAM2T. All rights reserved.
//

import UIKit
import Floaty
protocol CyclistDelegate {
    func delegateMethod(text : String)
}
class DetailCyclistViewController: UIViewController, CyclistDelegate{
    func delegateMethod(text: String) {
        
    }
    
    
    @IBOutlet weak var imageCyclist: UIImageView!
<<<<<<< HEAD
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var country: UILabel!
    @IBOutlet weak var speciality: UILabel!
    @IBOutlet weak var team: UILabel!
    @IBOutlet weak var birthday: UILabel!
    @IBOutlet weak var size: UILabel!
    @IBOutlet weak var wight: UILabel!
    @IBOutlet weak var mountain: UILabel!
    @IBOutlet weak var plain: UILabel!
    @IBOutlet weak var downhilling: UILabel!
    @IBOutlet weak var sprint: UILabel!
    @IBOutlet weak var resistance: UILabel!
    @IBOutlet weak var recuperation: UILabel!
    @IBOutlet weak var timetrial: UILabel!
    @IBOutlet weak var surname: UILabel!
    private var buttonEdit = Floaty()
    private var buttonSave = Floaty()
=======
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var surname: UITextField!
    @IBOutlet weak var country: UITextField!
    @IBOutlet weak var team: UITextField!
    @IBOutlet weak var speciality: UITextField!
    @IBOutlet weak var birthdate: UITextField!
    @IBOutlet weak var size: UITextField!
    @IBOutlet weak var weight: UITextField!
    @IBOutlet weak var mountain: UITextField!
    @IBOutlet weak var plain: UITextField!
    @IBOutlet weak var downhilling: UITextField!
    @IBOutlet weak var sprint: UITextField!
    @IBOutlet weak var resistance: UITextField!
    @IBOutlet weak var recuperation: UITextField!
    @IBOutlet weak var timetrial: UITextField!
    
    
    
    
>>>>>>> 2fcdb0428cd86477cbf235733b9c68b921f19a09
    private var manager = BBDDManager.getInstance()
    public var cyclistId: Int?
    private var cyclist: Cyclist? = nil
    public var delegate : CyclistDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonEdit.buttonImage = UIImage(named: "icons8-edit")
        buttonEdit.buttonColor = UIColor.orange
        buttonEdit.addItem(icon: nil, handler: {item in
            print("edit")
        })
        buttonEdit.handleFirstItemDirectly = true
        buttonEdit.paddingX = 105
        buttonEdit.paddingY = 90
        buttonSave.buttonImage = UIImage(named: "icons8-checkmark")
        buttonSave.buttonColor = UIColor.green
        buttonSave.addItem(icon: nil, handler: {item in
            print("save")
        })
        buttonSave.handleFirstItemDirectly = true
        buttonSave.paddingY = 90
        view.addSubview(buttonEdit)
        view.addSubview(buttonSave)
        if (cyclistId == nil){
            imageCyclist.image = UIImage(named: "imageCyclist")
        }else{
            cyclist = manager.getCyclistById(id: cyclistId!)
<<<<<<< HEAD
            imageCyclist.image = UIImage(named: "imageCyclist")
            name.text = "Name: " + cyclist!.firstname
            surname.text = "Lastname: " + cyclist!.lastname
            country.text = "Country: " + String(cyclist!.country_id)
            speciality.text = "Speciality: " + String(cyclist!.specialty_id)
            team.text = "Team: " + String(cyclist!.team_id)
            birthday.text = "Birthday: " + cyclist!.birthdate
            size.text = "Size: " + String(cyclist!.size) + " cm"
            wight.text = "Weight: " + String(cyclist!.weight) + " kg"
            mountain.text = "Mountain: " + String(cyclist!.mountain)
            plain.text = "Plain: " + String(cyclist!.plain)
            downhilling.text = "Downhilling: " + String(cyclist!.downhilling)
            sprint.text = "Sprint: " + String(cyclist!.sprint)
            resistance.text = "Resistance: " + String(cyclist!.resistante)
            recuperation.text = "Recuperation: " + String(cyclist!.recuperation)
            timetrial.text = "Timetrial: " + String(cyclist!.timetrial)
=======
                   imageCyclist.image = UIImage(named: "imageCyclist")
                   name.text = "Name: " + cyclist!.firstname
                   surname.text = "Lastname: " + cyclist!.lastname
                   country.text = "Country: " + String(cyclist!.country_id)
                   speciality.text = "Speciality: " + String(cyclist!.specialty_id)
                   team.text = "Team: " + String(cyclist!.team_id)
                   birthdate.text = "Birthday: " + cyclist!.birthdate
                   size.text = "Size: " + String(cyclist!.size) + " cm"
                   weight.text = "Weight: " + String(cyclist!.weight) + " kg"
                   mountain.text = "Mountain: " + String(cyclist!.mountain)
                   plain.text = "Plain: " + String(cyclist!.plain)
                   downhilling.text = "Downhilling: " + String(cyclist!.downhilling)
                   sprint.text = "Sprint: " + String(cyclist!.sprint)
                   resistance.text = "Resistance: " + String(cyclist!.resistante)
                   recuperation.text = "Recuperation: " + String(cyclist!.recuperation)
                   timetrial.text = "Timetrial: " + String(cyclist!.timetrial)
>>>>>>> 2fcdb0428cd86477cbf235733b9c68b921f19a09
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
    
}
