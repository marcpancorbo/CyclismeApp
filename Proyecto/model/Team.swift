//
//  Team.swift
//  Proyecto
//
//  Created by Marc Pancorbo Montaño on 04/02/2020.
//  Copyright © 2020 DAM2T. All rights reserved.
//

import Foundation
import RealmSwift
class Team : Object {
    @objc dynamic var name : String = "";
    @objc dynamic var country : String = "";
    @objc dynamic var manager : String = "";
    
    
    required init() {
    }
}
