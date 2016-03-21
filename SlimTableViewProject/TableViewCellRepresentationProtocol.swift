//
//  TableViewCellRepresentationProtocol.swift
//  SlimTableViewProject
//
//  Created by Maximilian Berndt on 21/03/16.
//  Copyright © 2016 self. All rights reserved.
//

import Foundation
import UIKit

protocol TableViewCellRepresentationProtocol {
    func tableView(tableView: UITableView, representationAsCellForRowAtIndexPath indexPath:NSIndexPath) -> UITableViewCell
}