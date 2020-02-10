//
//  DetailCyclistViewController.swift
//  Proyecto
//
//  Created by Arnau Solans on 04/02/2020.
//  Copyright © 2020 DAM2T. All rights reserved.
//

import UIKit
import Floaty
import Realm
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
    private var nCyclist = 0;
    private var buttonEdit = Floaty()
    private var buttonSave = Floaty()
    private var manager = BBDDManager.getInstance()
    public var cyclistId: Int?
    private var cyclist: Cyclist? = nil
    public var delegate : CyclistDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
        nCyclist = manager.findCyclist().last!.id+1
        buttonEdit.buttonImage = UIImage(named: "icons8-edit")
        let realm = manager.getRealm();
        buttonEdit.buttonColor = UIColor.orange
        buttonEdit.addItem(icon: nil, handler: {item in
            if  realm.isInWriteTransaction{
                try! realm.commitWrite();
            }
            realm.beginWrite()
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
            var check = false
            for case let textField as UITextField in self.view.subviews{
                if textField.text!.isEmpty{
                    check = true
                }
                if (self.cyclist == nil){
                    self.cyclist = Cyclist()
                }
            }
            if  !check{
                for case let textField as UITextField in self.view.subviews{
                    textField.borderStyle = UITextField.BorderStyle.none
                    textField.isEnabled = false
                }
                self.cyclist?.firstname = self.name.text!
                self.cyclist?.lastname = self.surname.text!
                self.cyclist?.country_id = self.country.text!
                self.cyclist?.team_id = self.team.text!
                self.cyclist?.specialty_id = Int(self.speciality.text!) ?? 0
                self.cyclist?.birthdate = self.birthdate.text!
                self.cyclist?.size = Int(self.size.text!) ?? 0
                self.cyclist?.weight = Int(self.weight.text!) ?? 0
                self.cyclist?.mountain = Int(self.mountain.text!) ?? 0
                self.cyclist?.plain = Int(self.plain.text!) ?? 0
                self.cyclist?.downhilling = Int(self.downhilling.text!) ?? 0
                self.cyclist?.sprint = Int(self.sprint.text!) ?? 0
                self.cyclist?.resistante = Int(self.resistance.text!) ?? 0
                self.cyclist?.recuperation = Int(self.recuperation.text!) ?? 0
                self.cyclist?.timetrial = Int(self.timetrial.text!) ?? 0
                
                self.buttonEdit.isUserInteractionEnabled = true
                self.buttonEdit.isHidden = false
                self.buttonSave.isUserInteractionEnabled = false
                self.buttonSave.isHidden = true
                if (self.cyclist?.id == 0){
                    self.cyclist?.id = self.nCyclist
                    self.cyclistId = self.nCyclist
                }
                realm.add(self.cyclist!)
                try! realm.commitWrite();
                self.printCyclist()
            }else{
                self.showToast();
            }
            
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
           printCyclist()
        }
    }
    
    func printCyclist(){
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
    
    func showToast() {

        let toastLabel = UILabel(frame: CGRect(x: self.view.frame.size.width/2-150, y: self.view.frame.size.height-100, width: 300, height: 35))
        toastLabel.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        toastLabel.textColor = UIColor.white
        toastLabel.textAlignment = .center;
        toastLabel.text = "All field must be written";
        toastLabel.alpha = 1.0
        toastLabel.layer.cornerRadius = 10;
        toastLabel.clipsToBounds  =  true
        self.view.addSubview(toastLabel)
        UIView.animate(withDuration: 4.0, delay: 0.1, options: .curveEaseOut, animations: {
             toastLabel.alpha = 0.0
        }, completion: {(isCompleted) in
            toastLabel.removeFromSuperview()
        })
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
