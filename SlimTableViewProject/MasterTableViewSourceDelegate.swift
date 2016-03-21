//
//  MasterTableViewSourceDelegate.swift
//  SlimTableViewProject
//
//  Created by Maximilian Berndt on 21/03/16.
//  Copyright © 2016 self. All rights reserved.
//

import Foundation
import UIKit

class MasterTableViewSourceDelegate: NSObject, UITableViewDataSource, UITableViewDelegate{

    //needs to be set
    var data: NSMutableArray?
    
    func tableView(tableView: UITableView, representedObjectAtIndexPath indexPath:NSIndexPath) -> AnyObject {
        if let item = data?[indexPath.section + indexPath.row] {
            return item
        }
        print("Unknown Section, return No One")
        return Name()
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let object = self.tableView(tableView, representedObjectAtIndexPath: indexPath)
        if let protocolObject = object as? TableViewCellRepresentationProtocol{
            return protocolObject.tableView(tableView, representationAsCellForRowAtIndexPath: indexPath)
        } else {
            print("Assumably didn't implement protocol")
            return UITableViewCell()
        }
    }
    
    //NOT viable yet
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let size = data?.count {
            return size
        }
        else {
            print("data was null")
            return 0
        }
    }
}