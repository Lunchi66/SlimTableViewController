//
//  ViewControllerTableViewSourceDelegate.swift
//  SlimTableViewProject
//
//  Created by Maximilian Berndt on 28/03/16.
//  Copyright © 2016 self. All rights reserved.
//

import Foundation
import UIKit

/**
 * This class will be designed to serve specific purposes. So this is the small part of this pattern that (most likely) cannot be re-used.
 */
class ViewControllerTableViewSourceDelegate: MasterTableViewSourceDelegate {
    
    /**
     * Override any necessary methods that you need to customize the appearance and design of the table view.
     */
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return Model.sharedModel.houses.count
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        //do not use in real case: refer to numberOfRowsInSection comment for explanation
        return Model.sharedModel.houses[section].name
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        /*
         Used for simplicity - be careful referring to section index in real case
         -> changing the order of adding the houses already causes problems bc.
         this attempt asumes the order of adding the houses (and their people) are added in order and the order and this order matches.
         
         Example: house order is Stark, then Baratheon ->
            1. all the Stark people are added
            2. all the Baratheon people & so on.
        */
        return Model.sharedModel.getNamesForHouse(Model.sharedModel.houses[section]).count
    }
    
    override func tableView(tableView: UITableView, representedObjectAtIndexPath indexPath: NSIndexPath) -> AnyObject {
        let house: House = Model.sharedModel.houses[indexPath.section]
        let persons = Model.sharedModel.getNamesForHouse(house)
        return persons.objectAtIndex(indexPath.row)
    }
    
}