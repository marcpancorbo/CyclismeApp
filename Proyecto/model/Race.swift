//
//  Event.swift
//  Proyecto
//
//  Created by Marc Pancorbo Montaño on 27/01/2020.
//  Copyright © 2020 DAM2T. All rights reserved.
//

import Foundation
import RealmSwift

class Race : Object{
@objc dynamic var image : String = "";
     @objc dynamic var name : String = "";
    @objc dynamic var popularity : Int = 0;
     @objc dynamic var country : String = "";
    @objc dynamic var roads : Int = 0;
@objc dynamic var kilometers : Int = 0;
  @objc dynamic var raceDescription: String = ""
    
    
    required init() {
    }
}
