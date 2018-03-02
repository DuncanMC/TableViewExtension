//
//  MyTableViewcontrollerTableViewController.swift
//  TableViewExtension
//
//  Created by Duncan Champney on 12/23/16.
//  Copyright © 2016 Duncan Champney. All rights reserved.
//

import UIKit

class MyTableViewcontroller: UITableViewController {
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        // Configure the cell...
        cell.textLabel?.text = "Cell \(indexPath.row)"
        if let cell = cell as? MyTableViewCell {
            cell.button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        }
        return cell
    }
    
    @IBAction func buttonTapped(_ button: UIButton) {
        if let indexPath = self.tableView.indexPathForView(button) {
            print("Button tapped at indexPath \(indexPath)")
        }
        else {
            print("Button indexPath not found")
        }
    }
    
}
