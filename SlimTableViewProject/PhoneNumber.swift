//
//  PhoneNumber.swift
//  SlimTableViewProject
//
//  Created by Maximilian Berndt on 21/03/16.
//  Copyright © 2016 self. All rights reserved.
//

import Foundation
import UIKit
class PhoneNumber: NSObject, TableViewCellRepresentationProtocol{
    var number: String
    
    // MARK: - TableViewCellRepresentationProtocol
    func tableView(tableView: UITableView, representationAsCellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = BasicTableViewCell()
        cell.textLabel?.text = number
        return cell
    }
    
    // MARK: - Initializer
    override init() {
        self.number = "666"
        super.init()
    }
    init(number:String) {
        self.number = number
        super.init()
    }
}