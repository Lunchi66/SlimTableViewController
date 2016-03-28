//
//  Name.swift
//  SlimTableViewProject
//
//  Created by Maximilian Berndt on 21/03/16.
//  Copyright © 2016 self. All rights reserved.
//

import Foundation
import UIKit
class Person: NSObject, TableViewCellRepresentationProtocol{
    var name: String
    var house: House
    
    // MARK: - TableViewCellRepresentationProtocol
    func tableView(tableView: UITableView, representationAsCellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //adjust class cell representation according to indexPath (probably not necessary if cell for this class should always look the same)
        let cell = BasicTableViewCell()
        cell.textLabel?.text = name + " " + house.name
        return cell
    }
    
    // MARK: - Initializer
    override init() {
        self.name = "No One"
        self.house = House(name: "House of Black & White", withWords: "Valar Morghulis")
        super.init()
    }
    init(name:String, house:House) {
        self.name = name
        self.house = house
        super.init()
    }
}