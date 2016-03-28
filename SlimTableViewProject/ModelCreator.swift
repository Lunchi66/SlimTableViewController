//
//  ModelCreator.swift
//  SlimTableViewProject
//
//  Created by Maximilian Berndt on 21/03/16.
//  Copyright © 2016 self. All rights reserved.
//

import Foundation

class ModelCreator: NSObject {
    
    /**
     * Create model strongly based on OOP
     */
    class func createModel() {
        let model = Model.sharedModel
        
        let stark = House(name: "Stark", withWords: "Winter is Coming")
        let baratheon = House(name: "Baratheon", withWords: "Ours is the Fury")
        let lannister = House(name: "Lannister", withWords: "Hear Me Roar!")
        let targaryen = House(name: "Targaryen", withWords: "Fire and Blood")
        
        model.houses.append(stark)
        model.persons.append(Person(name: "Eddard", house: stark))
        model.persons.append(Person(name: "Catelyn", house: stark))
        model.persons.append(Person(name: "Robb", house: stark))
        model.persons.append(Person(name: "Brandon", house: stark))
        model.persons.append(Person(name: "Rickon", house: stark))
        model.persons.append(Person(name: "Sansa", house: stark))
        model.persons.append(Person(name: "Arya", house: stark))
        
        model.houses.append(baratheon)
        model.persons.append(Person(name: "Robert", house: baratheon))
        model.persons.append(Person(name: "Joffrey", house: baratheon))
        model.persons.append(Person(name: "Tommen", house: baratheon))
        model.persons.append(Person(name: "Myrcella", house: baratheon))
        model.persons.append(Person(name: "Stannis", house: baratheon))
        model.persons.append(Person(name: "Renly", house: baratheon))
        
        model.houses.append(lannister)
        model.persons.append(Person(name: "Tywin", house: lannister))
        model.persons.append(Person(name: "Jamie", house: lannister))
        model.persons.append(Person(name: "Cersei", house: lannister))
        model.persons.append(Person(name: "Tyrion", house: lannister))
        model.persons.append(Person(name: "Kevan", house: lannister))
        model.persons.append(Person(name: "Lancel", house: lannister))
        
        model.houses.append(targaryen)
        model.persons.append(Person(name: "Daenerys", house: targaryen))
        model.persons.append(Person(name: "Rhaegar", house: targaryen))
        model.persons.append(Person(name: "Viserys", house: targaryen))
        model.persons.append(Person(name: "Aemon", house: targaryen))
        model.persons.append(Person(name: "Maegor", house: targaryen))
    }
}