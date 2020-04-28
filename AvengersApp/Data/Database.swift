//
//  Database.swift
//  AvengersApp
//
//  Created by Sergio Cazorla on 28/04/2020.
//  Copyright © 2020 Sergio Cazorla. All rights reserved.
//

import UIKit
import CoreData

class Database {
    // MARK: - Properties
    private let entityHeroe = "Heroe"
    private let entityHeroeName = "heroeName"
    private let entityHeroeImage = "heroeImage"
    private let entityHeroeDescription = "heroeDescription"
    private let entityHeroePower = "heroePower"
    private let entityHeroeBattles = "battles"
    
    private let entityVillain = "Villain"
    private let entityVillainName = "villainName"
    private let entityVillainImage = "villainImage"
    private let entityVillainDescription = "villainDescription"
    private let entityVillainPower = "villainPower"
    private let entityVillainBattles = "battles"
    
    
    private let entityBattle = "Battle"
    private let entityBattleFighter1 = "heroeFighter1"
    private let entityBattleFighter2 = "villainFighter2"
    private let entityBattleWinner = "battleWinner"
    
    
    // MARK: - Managed Object Context
        
        private func context() -> NSManagedObjectContext? {
            guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
                return nil
            }
             
            return appDelegate.persistentContainer.viewContext
        }


    // MARK: - Database methods

        func createDataHeroe() -> NSManagedObject? {
            guard let contextMOB = context(),
                  let entity = NSEntityDescription.entity(forEntityName: entityHeroe,
                                                          in: contextMOB) else {
                return nil
            }
            
            return Heroes(entity: entity,
                        insertInto: context())
        }
        
        func createDataVillain() -> NSManagedObject? {
            guard let contextMOB = context(),
                  let entity = NSEntityDescription.entity(forEntityName: entityVillain,
                                                          in: contextMOB) else {
                return nil
            }
            
            return Villains(entity: entity,
                        insertInto: context())
        }
        
        func createDataBattle() -> NSManagedObject? {
            guard let contextMOB = context(),
                  let entity = NSEntityDescription.entity(forEntityName: entityBattle,
                                                          in: contextMOB) else {
                return nil
            }
            
            return Battle(entity: entity,
                        insertInto: context())
        }
        

        func persistAll() {
            guard let contextMOB = context() else {
                return
            }

            try? contextMOB.save()
        }
        
        func persistHeroes(_ heroe: Heroes) {
            guard let contextMOB = context() else {
                return
            }

            try? contextMOB.save()
        }

        
        func fecthAllData(_ entity: String) -> [NSManagedObject]? {
            return try? context()?.fetch(NSFetchRequest<NSFetchRequestResult>(entityName: entity)) as? [NSManagedObject]
        }
        
        func fetchDataBy(fighter: String, type: String) -> [NSManagedObject]? {
            let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: entityBattle)
            
            if type == "Heroe" {
                fetchRequest.predicate = NSPredicate(format: "heroeFighter1 = \(fighter)")
            } else {
               fetchRequest.predicate = NSPredicate(format: "villainFighter2 = \(fighter)")
            }
            
            return try? context()?.fetch(fetchRequest) as? [NSManagedObject]
        }
        
        func fetchDataBy (name: String, type: String) -> [NSManagedObject]? {
                if type == "Heroe" {
                    let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: entityHeroe)
                    let heroePredicate = NSPredicate(format: "\(entityHeroeName) = \(name)")
                    fetchRequest.predicate = heroePredicate
                    return try? context()?.fetch(fetchRequest) as? [NSManagedObject]
                } else {
                    let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: entityVillain)
                    let villainPredicate = NSPredicate(format: "\(entityVillainName) = \(name)")
                    fetchRequest.predicate = villainPredicate
                    return try? context()?.fetch(fetchRequest) as? [NSManagedObject]
                }
                
            }
    
    
}
