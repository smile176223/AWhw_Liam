//
//  ViewController.swift
//  Week4_Q1
//
//  Created by Hao on 2022/1/24.
//

import UIKit

class TableViewController: UITableViewController {

    
    let itemArray = ["0","1","2","3","4","5","6","7","8","9","10"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 100
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "10Cell", for: indexPath)
        cell.textLabel?.text = "This is section \(itemArray[indexPath.section]), row \(itemArray[indexPath.row])"
        return cell
    }


}

