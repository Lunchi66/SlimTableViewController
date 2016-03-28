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
    let dataSource = ViewControllerTableViewSourceDelegate()
    
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
        *   e.g. this one displays names of the great houses in Game of Thrones followed by some known persons
        *   This stack process can be reviewed in the ModelCreator Helper class -> rid this controller of "fat" code
        */
        
        //Create some Model to display content
        ModelCreator.createModel()
        
        //Necessary!
        self.dataSource.data = NSMutableArray(array: Model.sharedModel.persons)
    }

}

