//
//  ModelCreator.swift
//  SlimTableViewProject
//
//  Created by Maximilian Berndt on 21/03/16.
//  Copyright © 2016 self. All rights reserved.
//

import Foundation

class ModelCreator: NSObject {
    class func createModel() -> NSMutableArray {
        let data = NSMutableArray()
        data.addObject(House(name: "Stark", withWords: "Winter is Coming"))
        data.addObject(Name(name: "Eddard Stark"))
        data.addObject(Name(name: "Catelyn Stark"))
        data.addObject(Name(name: "Robb Stark"))
        data.addObject(Name(name: "Brandon Stark"))
        data.addObject(Name(name: "Rickon Stark"))
        data.addObject(Name(name: "Sansa Stark"))
        data.addObject(Name(name: "Arya Stark"))
        
        data.addObject(House(name: "Baratheon", withWords: "Ours is the Fury"))
        data.addObject(Name(name: "Robert Baratheon"))
        data.addObject(Name(name: "Joffrey Baratheon"))
        data.addObject(Name(name: "Tommen Baratheon"))
        data.addObject(Name(name: "Myrcella Baratheon"))
        data.addObject(Name(name: "Stannis Baratheon"))
        data.addObject(Name(name: "Renly Baratheon"))
        
        data.addObject(House(name: "Lannister", withWords: "Hear Me Roar!"))
        data.addObject(Name(name: "Tywin Lannister"))
        data.addObject(Name(name: "Jamie Lannister"))
        data.addObject(Name(name: "Cersei Lannister"))
        data.addObject(Name(name: "Tyrion Lannister"))
        data.addObject(Name(name: "Kevan Lannister"))
        data.addObject(Name(name: "Lancel Lannister"))
        
        data.addObject(House(name: "Targaryen", withWords: "Fire and Blood"))
        data.addObject(Name(name: "Daenerys Targaryen"))
        data.addObject(Name(name: "Rhaegar Targaryen"))
        data.addObject(Name(name: "Viserys Targaryen"))
        data.addObject(Name(name: "Aemon Targaryen"))
        data.addObject(Name(name: "Maegor Targaryen"))
        
        return data
    }
}