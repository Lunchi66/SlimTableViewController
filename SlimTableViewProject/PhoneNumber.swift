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
    var number: String = ""
    
    // MARK: - TableViewCellRepresentationProtocol
    func tableView(tableView: UITableView, representationAsCellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        //adjust class cell representation according to indexPath (probably not necessary if cell for this class should always look the same)
        var cell = UITableViewCell()
        if indexPath.row == 0 || indexPath.row == 2 {
            cell = BasicTableViewCell()
            cell.textLabel?.text = number + " - Basic"
        } else if indexPath.row == 1 {
            cell = RightDetailTableViewCell()
            cell.textLabel?.text = number + " - RightDetail"
        }
        return cell
    }
    
    // MARK: - Initializer
    override init() {
        self.number = "No One"
        super.init()
    }
    init(name:String) {
        self.number = name
        super.init()
    }
}