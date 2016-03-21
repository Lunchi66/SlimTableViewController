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

    // Warning: - Probably get this from the model
    func prepareTableViewData() {
        /**
        *   Use this method to kinda built some "stack" of views
        *   e.g. this one displays 3 Name objects followed by 3 PhoneNumber Objects
        */
        let data = NSMutableArray()
        data.addObject(Name(name: "Benjin"))
        data.addObject(Name(name: "Eddard"))
        data.addObject(Name(name: "Brandon"))
        data.addObject(PhoneNumber(number: "+490123456789"))
        data.addObject(PhoneNumber(number: "+491111111111"))
        data.addObject(PhoneNumber(number: "+492222222222"))
        
        self.dataSource.data = data
    }

}

