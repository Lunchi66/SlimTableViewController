//
//  PhoneNumber.swift
//  SlimTableViewProject
//
//  Created by Maximilian Berndt on 21/03/16.
//  Copyright © 2016 self. All rights reserved.
//

import Foundation
import UIKit
class House: NSObject, TableViewCellRepresentationProtocol{
    var name: String
    var words: String
    
    // MARK: - TableViewCellRepresentationProtocol
    func tableView(tableView: UITableView, representationAsCellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //This is used because there was an issue causing detailTextLabel alway to be nil... this somehow ditches the bug
        let cell = UITableViewCell(style: .Value1, reuseIdentifier: "RightDetailTableViewCell")
        cell.textLabel?.text = name
        if let detailLabel = cell.detailTextLabel {
            detailLabel.text = words
        } else {
            print("detail nil")
        }
        return cell
    }
    
    // MARK: - Initializer
    override init() {
        self.name = "Others"
        self.words = "666"
        super.init()
    }
    init(name:String, withWords words:String) {
        self.name = name
        self.words = words
        super.init()
    }
}