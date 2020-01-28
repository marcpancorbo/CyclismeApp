//
//  BBDDManager.swift
//  Proyecto
//
//  Created by Marc Pancorbo Montaño on 27/01/2020.
//  Copyright © 2020 DAM2T. All rights reserved.
//

import Foundation
import RealmSwift

class BBDDManager {
    public static var bbddManager = BBDDManager()
    private let realm = try! Realm()
    private init(){
        
    }
    public static func getInstance() -> BBDDManager {
        return bbddManager;
    }
    public func storeRace(race: Race){
        try! realm.write {
            realm.add(race)
        }
    }
    public func findRaces() -> Results<Race>{
        return realm.objects(Race.self)
    }

}
