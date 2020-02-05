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
    private var buttonEdit = Floaty()
    private var buttonSave = Floaty()
    private var manager = BBDDManager.getInstance()
    public var cyclistId: Int?
    private var cyclist: Cyclist? = nil
    public var delegate : CyclistDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonEdit.buttonImage = UIImage(named: "icons8-edit")
        buttonEdit.buttonColor = UIColor.orange
        buttonEdit.addItem(icon: nil, handler: {item in
            if (self.cyclist != nil){
                self.name.text = self.cyclist!.firstname
                self.surname.text = self.cyclist!.lastname
                self.country.text = self.cyclist!.country_id
                self.speciality.text = String(self.cyclist!.specialty_id)
                self.team.text = self.cyclist!.team_id
                self.birthdate.text = self.cyclist!.birthdate
                self.size.text = String(self.cyclist!.size)
                self.weight.text = String(self.cyclist!.weight)
                self.mountain.text = String(self.cyclist!.mountain)
                self.plain.text = String(self.cyclist!.plain)
                self.downhilling.text = String(self.cyclist!.downhilling)
                self.sprint.text = String(self.cyclist!.sprint)
                self.resistance.text = String(self.cyclist!.resistante)
                self.recuperation.text = String(self.cyclist!.recuperation)
                self.timetrial.text = String(self.cyclist!.timetrial)
                
            }
            for case let textField as UITextField in self.view.subviews{
                textField.borderStyle = UITextField.BorderStyle.roundedRect
                textField.isEnabled = true
            }
            self.buttonEdit.isUserInteractionEnabled = false
            self.buttonEdit.isHidden = true
            self.buttonSave.isUserInteractionEnabled = true
            self.buttonSave.isHidden = false
        })
        buttonEdit.handleFirstItemDirectly = true
        buttonEdit.paddingY = 90
        buttonSave.buttonImage = UIImage(named: "icons8-checkmark")
        buttonSave.buttonColor = UIColor.green
        buttonSave.addItem(icon: nil, handler: {item in
            self.buttonEdit.isUserInteractionEnabled = true
            self.buttonEdit.isHidden = false
            self.buttonSave.isUserInteractionEnabled = false
            self.buttonSave.isHidden = true
        })
        buttonSave.handleFirstItemDirectly = true
        buttonSave.paddingY = 90
        buttonSave.isHidden = true
        buttonSave.isUserInteractionEnabled = false
        view.addSubview(buttonEdit)
        view.addSubview(buttonSave)
        if (cyclistId == nil){
            imageCyclist.image = UIImage(named: "imageCyclist")
        }else{
            cyclist = manager.getCyclistById(id: cyclistId!)
            imageCyclist.image = UIImage(named: "imageCyclist")
            name.text = "Name: " + cyclist!.firstname
            surname.text = "Lastname: " + cyclist!.lastname
            country.text = "Country: " + cyclist!.country_id
            speciality.text = "Speciality: " + String(cyclist!.specialty_id)
            team.text = "Team: " + cyclist!.team_id
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
