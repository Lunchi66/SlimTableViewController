//
//  RightDetailTableViewCell.swift
//  SlimTableViewProject
//
//  Created by Maximilian Berndt on 21/03/16.
//  Copyright © 2016 self. All rights reserved.
//

import Foundation
import UIKit
class RightDetailTableViewCell : UITableViewCell {
    override func awakeFromNib() {
        self.textLabel?.text = ""
        self.detailTextLabel?.text = "TEST"
    }
}