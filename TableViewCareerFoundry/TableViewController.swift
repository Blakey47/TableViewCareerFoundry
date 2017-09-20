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
    
    var allShopping: [[Shopping]] = [ShoppingList.foodItems, ShoppingList.drinkItems]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        navigationItem.rightBarButtonItem = editButtonItem
        
        self.navigationItem.title = "Shopping List"
        
        tableView.allowsSelectionDuringEditing = true
        
    }

    override func setEditing(_ editing: Bool, animated: Bool) {
        super.setEditing(editing, animated: animated)
        
        if editing {
            tableView.beginUpdates()
            
            for (index, sectionItems) in allShopping.enumerated() {
                let indexPath = IndexPath(row: sectionItems.count, section: index)
                tableView.insertRows(at: [indexPath], with: .fade)
            }
            
            tableView.endUpdates()
            tableView.setEditing(true, animated: true)
        } else {
            tableView.beginUpdates()
            
            for (index, sectionItems) in allShopping.enumerated() {
                let indexPath = IndexPath(row: sectionItems.count, section: index)
                tableView.deleteRows(at: [indexPath], with: .fade)
            }
            
            tableView.endUpdates()
            tableView.setEditing(false, animated: true)
        }
    }
    
}

// TableView DataSource
extension TableViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return allShopping.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let addedRow = isEditing ? 1 : 0
        
        return allShopping[section].count + addedRow
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        if indexPath.row >= allShopping[indexPath.section].count && isEditing {
            cell.textLabel?.text = "Add New Shopping Item"
            cell.detailTextLabel?.text = nil
            cell.imageView?.image = nil
        } else {
            let item = allShopping[indexPath.section][indexPath.row]
            
            cell.textLabel?.text = item.items
            cell.detailTextLabel?.text = item.price
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        var typeOfShopping: String
        if section == 0 {
            typeOfShopping = "Food List"
        } else {
            typeOfShopping = "Drink List"
        }
        return typeOfShopping
    }
    
}

// TableView Delegate
extension TableViewController: UITableViewDelegate {
    
}











































