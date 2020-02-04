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
    public func store(race: Object){
        try! realm.write {
            realm.add(race)
        }
    }
    public func findRaces() -> Results<Race>{
        return realm.objects(Race.self).sorted(byKeyPath: "popularity", ascending: false)
    }
    public func findTeams() -> Results<Team>{
        return realm.objects(Team.self)
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
            race1.roads = 3
            race1.kilometers = 200
            race2.name = "Race2"
            race2.raceDescription = "Race in Madrid"
            race2.popularity = 1
            race2.country = "Spain"
            race2.roads = 6
            race2.kilometers = 2000
            race3.name = "Race3"
            race3.raceDescription = "Race in Badajoz"
            race3.popularity = 7
            race3.country = "Spain"
            race3.roads = 1
            race3.kilometers = 100
            race4.name = "Race4"
            race4.raceDescription = "Race in Teruel"
            race4.popularity = 2
            race4.country = "Spain"
            race4.roads = 2
            race4.kilometers = 500
            store(race: race1)
            store(race: race2)
            store(race: race3)
            store(race: race4)
            var team1 = Team()
            var team2 = Team()
            var team3 = Team()
            var team4 = Team()
            team1.name = "Team 1"
            team1.manager = "Pepe"
            team1.country = "England"
            team2.name = "Team 2"
            team2.manager = "Arnau"
            team2.country = "Spain"
            team3.name = "Team 3"
            team3.manager = "Marc"
            team3.country = "Deutschland"
            team4.name = "Team 4"
            team4.manager = "Luis"
            team4.country = "USA"
            store(race: team1)
            store(race: team2)
            store(race: team3)
            store(race: team4)
        }
    }
    
}
