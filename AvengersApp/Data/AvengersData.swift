//
//  AvengersData.swift
//  AvengersApp
//
//  Created by Sergio Cazorla on 28/04/2020.
//  Copyright © 2020 Sergio Cazorla. All rights reserved.
//

import Foundation

class AvengersData {
    
    private let dataProvider = DataProvider()
    
    func saveHeroes () {
        guard let capitanAmerica = dataProvider.createHeroe() else {return}
        let blackPanther = dataProvider.createHeroe()
        let laViudaNegra = dataProvider.createHeroe()
        let drStrange = dataProvider.createHeroe()
        let gamora = dataProvider.createHeroe()
        let hulk = dataProvider.createHeroe()
        let ironman = dataProvider.createHeroe()
        let capitanaMarvel = dataProvider.createHeroe()
        let spiderman = dataProvider.createHeroe()
        let thor = dataProvider.createHeroe()
        
        capitanAmerica.heroeName = "Capitán América"
        capitanAmerica.heroeDescription = "Descripción"
        capitanAmerica.heroeImage = "img_heroe_america_captain"
        capitanAmerica.heroePower = 4

        blackPanther?.heroeName = "Black Panther"
        blackPanther?.heroeDescription = "Descripción"
        blackPanther?.heroeImage = "img_heroe_black_panther"
        blackPanther?.heroePower = 3

        laViudaNegra?.heroeName = "La Viuda Negra"
        laViudaNegra?.heroeDescription = "Descripción"
        laViudaNegra?.heroeImage = "img_heroe_black_widow"
        laViudaNegra?.heroePower = 2
            
        drStrange?.heroeName = "Dr. Strange"
        drStrange?.heroeDescription = "Descripción"
        drStrange?.heroeImage = "img_heroe_dr_strange"
        drStrange?.heroePower = 4
            
        gamora?.heroeName = "Gamora"
        gamora?.heroeDescription = "Descripción"
        gamora?.heroeImage = "img_heroe_gamora"
        gamora?.heroePower = 3
            
        hulk?.heroeName = "Hulk"
        hulk?.heroeDescription = "Descripción"
        hulk?.heroeImage = "img_heroe_hulk"
        hulk?.heroePower = 5
            
        ironman?.heroeName = "Iron Man"
        ironman?.heroeDescription = "Descripción"
        ironman?.heroeImage = "img_heroe_ironman"
        ironman?.heroePower = 3
            
        capitanaMarvel?.heroeName = "Capitana Marvel"
        capitanaMarvel?.heroeDescription = "Descripción"
        capitanaMarvel?.heroeImage = "img_heroe_marvel_captain"
        capitanaMarvel?.heroePower = 4
            
        spiderman?.heroeName = "Spiderman"
        spiderman?.heroeDescription = "Descripción"
        spiderman?.heroeImage = "img_heroe_spiderman"
        spiderman?.heroePower = 2

        thor?.heroeName = "Thor"
        thor?.heroeDescription = "Descripción"
        thor?.heroeImage = "img_heroe_thor"
        thor?.heroePower = 5
        
        dataProvider.saveChanges()
        
    }
    
    func saveVillains () {
        let yonRogg = dataProvider.createVillain()
        let dormammu = dataProvider.createVillain()
        let ego = dataProvider.createVillain()
        let hela = dataProvider.createVillain()
        let ivanVanko = dataProvider.createVillain()
        let johanSchmidt = dataProvider.createVillain()
        let malekith = dataProvider.createVillain()
        let ronanElAcusador = dataProvider.createVillain()
        let thanos = dataProvider.createVillain()
        let ultron = dataProvider.createVillain()
        
        yonRogg?.villainName = "Yon-Rogg"
        yonRogg?.villainDescription = "Descripción"
        yonRogg?.villainImage = "img_heroe_yon_rogg"
        yonRogg?.villainPower = 2

        dormammu?.villainName = "Dormammu"
        dormammu?.villainDescription = "Descripción"
        dormammu?.villainImage = "img_villain_dormammu"
        dormammu?.villainPower = 4
            
        ego?.villainName = "Ego"
        ego?.villainDescription = "Descripción"
        ego?.villainImage = "img_villain_ego"
        ego?.villainPower = 2
            
        hela?.villainName = "Hela"
        hela?.villainDescription = "Descripción"
        hela?.villainImage = "img_villain_hela"
        hela?.villainPower = 4
            
        ivanVanko?.villainName = "Ivan Vanko"
        ivanVanko?.villainDescription = "Descripción"
        ivanVanko?.villainImage = "img_villain_ivan_vanko"
        ivanVanko?.villainPower = 3
            
        johanSchmidt?.villainName = "Johann Schmidt"
        johanSchmidt?.villainDescription = "Descripción"
        johanSchmidt?.villainImage = "img_villain_johann_schmidt"
        johanSchmidt?.villainPower = 2
            
        malekith?.villainName = "Malekith"
        malekith?.villainDescription = "Descripción"
        malekith?.villainImage = "img_villain_malekith"
        malekith?.villainPower = 3
            
        ronanElAcusador?.villainName = "Ronan El Acusador"
        ronanElAcusador?.villainDescription = "Descripción"
        ronanElAcusador?.villainImage = "img_villain_ronan"
        ronanElAcusador?.villainPower = 4
            
        thanos?.villainName = "Thanos"
        thanos?.villainDescription = "Descripción"
        thanos?.villainImage = "img_villain_thanos"
        thanos?.villainPower = 5
            
        ultron?.villainName = "Ultron"
        ultron?.villainDescription = "Descripción"
        ultron?.villainImage = "img_villain_ultron"
        ultron?.villainPower = 4
        
        dataProvider.saveChanges()
                                            
    }
    
}
