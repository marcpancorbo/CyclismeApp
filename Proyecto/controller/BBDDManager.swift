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
        realm.beginWrite()
        realm.deleteAll()
        try! realm.commitWrite()
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
        return realm.objects(Race.self).sorted(byKeyPath: "popularity", ascending: false)
    }
    public func initBBDD(){
        if (findRaces().isEmpty){
                   var race1 = Race()
                   var race2 = Race()
                   var race3 = Race()
                   var race4 = Race()
                   race1.name = "Race1"
                   race1.raceDescription = "Race in Barcelona"
                   race1.popularity = 4
                   race2.name = "Race2"
                   race2.raceDescription = "Race in Madrid"
                race2.popularity = 1
                   race3.name = "Race3"
                   race3.raceDescription = "Race in Badajoz"
                race3.popularity = 7
                   race4.name = "Race4"
                   race4.raceDescription = "Race in Teruel"
            race4.popularity = 2
                   storeRace(race: race1)
                   storeRace(race: race2)
                   storeRace(race: race3)
                   storeRace(race: race4)
               }
    }

}
