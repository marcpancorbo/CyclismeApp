////
////  Cyclist.swift
////  Proyecto
////
////  Created by Arnau Solans on 27/01/2020.
////  Copyright © 2020 DAM2T. All rights reserved.
////
//
import Foundation
import RealmSwift

class Cyclist : Object{

    @objc dynamic var id : Int = 0
    @objc dynamic var team_id : Int = 0
    @objc dynamic var country_id : Int = 0
    @objc dynamic var specialty_id : Int = 0
    @objc dynamic var lastname : String = ""
    @objc dynamic var firstname : String = ""
    @objc dynamic var birthdate : String = ""
    @objc dynamic var popularity : Int = 0
    @objc dynamic var leader : Bool = false
    @objc dynamic var size : Int = 0
    @objc dynamic var weight : Int = 0
    @objc dynamic var mountain : Int = 0
    @objc dynamic var plain : Int = 0
    @objc dynamic var downhilling : Int = 0
    @objc dynamic var sprint : Int = 0
    @objc dynamic var resistante : Int = 0
    @objc dynamic var recuperation : Int = 0
    @objc dynamic var timetrial : Int = 0
    
    required init() {
    }
}
