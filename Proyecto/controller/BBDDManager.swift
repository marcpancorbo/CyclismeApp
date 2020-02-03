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
    public func getRaceByName(name : String) -> Race {
        var races = realm.objects(Race.self).filter("name = %@", name)
        return races.first!
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
            race1.country = "Spain"
                   race2.name = "Race2"
                   race2.raceDescription = "Race in Madrid"
                race2.popularity = 1
            race2.country = "Spain"

                   race3.name = "Race3"
                   race3.raceDescription = "Race in Badajoz"
                race3.popularity = 7
            race3.country = "Spain"

                   race4.name = "Race4"
                   race4.raceDescription = "Race in Teruel"
            race4.popularity = 2
            race4.country = "Spain"

                   storeRace(race: race1)
                   storeRace(race: race2)
                   storeRace(race: race3)
                   storeRace(race: race4)
               }
    }

}
