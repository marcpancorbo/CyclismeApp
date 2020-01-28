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
    private let realm = try! Realm(configuration: Realm.Configuration())
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
    public func initBBDD(){
        var race1 = Race()
        var race2 = Race()
        var race3 = Race()
        race1.name = "Race1"
        race1.raceDescription = "AAA"
        race2.name = "Race2"
        race2.raceDescription = "BBBB"
        race3.name = "Race3"
        race3.raceDescription = "CCC"
        storeRace(race: race1)
        storeRace(race: race2)
        storeRace(race: race3)
    }

}
