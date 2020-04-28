//
//  DataProvider.swift
//  AvengersApp
//
//  Created by Sergio Cazorla on 28/04/2020.
//  Copyright © 2020 Sergio Cazorla. All rights reserved.
//

import Foundation

class DataProvider {
    private var database: Database? = nil
    private let entityHeroe = "Heroe"
    private let entityVillain = "Villain"
    private let entityBattle = "Battle"
    init() {
        database = Database()
    }
    
    deinit {
        database = nil
    }
    
    func createHeroe() -> Heroes? {
        return database?.createDataHeroe() as? Heroes
    }
    
    func createVillain() -> Villains? {
        return database?.createDataVillain() as? Villains
    }
    
    func createBattle() -> Battle? {
        return database?.createDataBattle() as? Battle
    }
    
    func loadAllHeroes() -> [Heroes] {
        guard let data = database?.fecthAllData(entityHeroe) as? [Heroes] else {
            return []
        }
        
        return data
    }
    
    func loadAllVillains() -> [Villains] {
        guard let data = database?.fecthAllData(entityVillain) as? [Villains] else {
            return []
        }
        
        return data
    }
    
    func loadAllBattles() -> [Battle] {
        guard let data = database?.fecthAllData(entityBattle) as? [Battle] else {
            return []
        }
        
        return data
    }
    
    func loadHeroeBattlesBy (fighter: String) -> [Battle] {
       return database?.fetchDataBy(fighter: fighter, type: entityHeroe) as? [Battle] ?? []
    }
    
    func loadVillainBattlesBy (fighter: String) -> [Battle] {
        return database?.fetchDataBy(fighter: fighter, type: entityVillain) as? [Battle] ?? []
    }
    
    func loadHeroeBy (name: String) -> [Heroes] {
        return database?.fetchDataBy(name: name, type: entityHeroe) as? [Heroes] ?? []
    }
    
    func loadVillainBy (name: String) -> [Villains] {
        return database?.fetchDataBy(name: name, type: entityVillain) as? [Villains] ?? []
    }
    
    func saveChanges() {
        database?.persistAll()
    }
    
    func saveHeroe (_ heroe: Heroes) {
        database?.persistHeroes(heroe)
    }
        
}
