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
    public func findCyclist() -> Results<Cyclist>{
        return realm.objects(Cyclist.self).sorted(byKeyPath: "popularity", ascending: false)
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
            var cyclist1 = Cyclist()
            var cyclist2 = Cyclist()
            var cyclist3 = Cyclist()
            var cyclist4 = Cyclist()
            cyclist1.id = 1
            cyclist1.team_id = 1
            cyclist1.country_id = 1
            cyclist1.specialty_id = 1
            cyclist1.lastname = "Contador"
            cyclist1.firstname = "Alberto"
            cyclist1.birthdate = "22-05-1976"
            cyclist1.popularity = 10
            cyclist1.leader = true
            cyclist1.size = 185
            cyclist1.weight = 78
            cyclist1.mountain = 89
            cyclist1.plain = 45
            cyclist1.downhilling = 23
            cyclist1.sprint = 47
            cyclist1.resistante = 57
            cyclist1.recuperation = 100
            cyclist1.timetrial = 34
            cyclist2.id = 2
            cyclist2.team_id = 2
            cyclist2.country_id = 2
            cyclist2.specialty_id = 2
            cyclist2.lastname = "Mestres"
            cyclist2.firstname = "Ramon"
            cyclist2.birthdate = "12-11-1996"
            cyclist2.popularity = 8
            cyclist2.leader = false
            cyclist2.size = 175
            cyclist2.weight = 56
            cyclist2.mountain = 67
            cyclist2.plain = 23
            cyclist2.downhilling = 12
            cyclist2.sprint = 34
            cyclist2.resistante = 87
            cyclist2.recuperation = 46
            cyclist2.timetrial = 23
            cyclist3.id = 3
            cyclist3.team_id = 3
            cyclist3.country_id = 3
            cyclist3.specialty_id = 3
            cyclist3.lastname = "Pancorbo"
            cyclist3.firstname = "Marc"
            cyclist3.birthdate = "22-1-1600"
            cyclist3.popularity = 5
            cyclist3.leader = false
            cyclist3.size = 178
            cyclist3.weight = 67
            cyclist3.mountain = 24
            cyclist3.plain = 27
            cyclist3.downhilling = 68
            cyclist3.sprint = 46
            cyclist3.resistante = 28
            cyclist3.recuperation = 85
            cyclist3.timetrial = 45
            cyclist4.id = 4
            cyclist4.team_id = 4
            cyclist4.country_id = 4
            cyclist4.specialty_id = 4
            cyclist4.lastname = "Solans"
            cyclist4.firstname = "Arnau"
            cyclist4.birthdate = "19-04-1999"
            cyclist4.popularity = 4
            cyclist4.leader = false
            cyclist4.size = 181
            cyclist4.weight = 85
            cyclist4.mountain = 78
            cyclist4.plain = 45
            cyclist4.downhilling = 45
            cyclist4.sprint = 33
            cyclist4.resistante = 66
            cyclist4.recuperation = 77
            cyclist4.timetrial = 99
            store(race: cyclist1)
            store(race: cyclist2)
            store(race: cyclist3)
            store(race: cyclist4)
        }
    }
    
}
