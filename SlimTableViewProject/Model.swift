//
//  Store.swift
//  SlimTableViewProject
//
//  Created by Maximilian Berndt on 28/03/16.
//  Copyright © 2016 self. All rights reserved.
//

import Foundation

class Model: NSObject {
    // MARK: - Singleton access
    
    /// Singleton model class var to get access to the same model from every class.
    class var sharedModel: Model {
        
        struct Static {
            static var instance: Model?
            static var token: dispatch_once_t = 0
        }
        
        dispatch_once(&Static.token) {
            Static.instance = Model()
        }
        
        return Static.instance!
    }
    
    // MARK: - Properties
    
    internal var persons: [Person]
    internal var houses: [House]
    
    override init() {
        persons = []
        houses = []
        super.init()
    }
    
    func getNamesForHouse(house:House) -> NSArray {
        var names: [Person] = []
        for person in persons{
            if person.house.name == house.name {
                print("Person found: \(person.name) for house: \(house.name)")
                names.append(person)
            }
        }
        return names
    }
    
}