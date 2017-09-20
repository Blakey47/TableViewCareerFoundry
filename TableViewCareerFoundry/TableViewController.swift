//
//  ViewController.swift
//  TableViewCareerFoundry
//
//  Created by Darragh on 9/20/17.
//  Copyright © 2017 Darragh. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var items = [DataItem]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        self.automaticallyAdjustsScrollViewInsets = false
        
        navigationItem.rightBarButtonItem = editButtonItem
        
        tableView.allowsSelectionDuringEditing = true
        
    }

    


}


