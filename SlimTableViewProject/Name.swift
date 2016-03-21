//
//  Name.swift
//  SlimTableViewProject
//
//  Created by Maximilian Berndt on 21/03/16.
//  Copyright © 2016 self. All rights reserved.
//

import Foundation
import UIKit
class Name: NSObject, TableViewCellRepresentationProtocol{
    var name: String = ""
    
    // MARK: - TableViewCellRepresentationProtocol
    func tableView(tableView: UITableView, representationAsCellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //adjust class cell representation according to indexPath (probably not necessary if cell for this class should always look the same)
        let cell = BasicTableViewCell()
        cell.textLabel?.text = name
        return cell
    }
    
    // MARK: - Initializer
    override init() {
        self.name = "No One"
        super.init()
    }
    init(name:String) {
        self.name = name
        super.init()
    }
}