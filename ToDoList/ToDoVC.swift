//
//  ViewController.swift
//  ToDoList
//
//  Created by MOHAMED on 6/14/19.
//  Copyright © 2019 MOHAMED. All rights reserved.
//

import UIKit

class ToDoVC: UITableViewController {

    var itemArray = ["test1" , "Test2" , "Test3"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoCell")!
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.itemArray.count
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // animating selection
        tableView.deselectRow(at: indexPath, animated: true)
        let item = tableView.cellForRow(at: indexPath)
        if item?.accessoryType == .checkmark {
            item?.accessoryType = .none
        }else {
            item?.accessoryType = .checkmark
        }
    }

}

