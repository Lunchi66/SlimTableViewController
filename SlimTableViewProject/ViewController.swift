//
//  ViewController.swift
//  SlimTableViewProject
//
//  Created by Maximilian Berndt on 21/03/16.
//  Copyright © 2016 self. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    let dataSource = MasterTableViewSourceDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tableView.dataSource = dataSource
        self.tableView.delegate = dataSource
        prepareTableViewData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //GET FROM MODEL!?
    func prepareTableViewData() {
        var data = NSMutableArray()
        let name1 = Name(name: "Benjin")
        let name2 = Name(name: "Eddard")
        let name3 = Name(name: "Brandon")
        data.addObject(name1)
        data.addObject(name2)
        data.addObject(name3)
        self.dataSource.data = data
    }

}

