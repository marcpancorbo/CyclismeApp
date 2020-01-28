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
     dynamic var image : String = "";
     dynamic var name : String = "";
     dynamic var popularity : Int = 0;
     dynamic var country : String = "";
     dynamic var roads : Int = 0;
     dynamic var kilometers : Int = 0;
    
    
    required init() {
    }
}
