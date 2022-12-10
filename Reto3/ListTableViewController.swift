//
//  ListTableViewController.swift
//  Reto3
//
//  Created by Geraldo Emilio Sosa Sosa on 4/12/22.
//

import UIKit

class ListTableViewController: UITableViewController{
    
    var arrayTask : [Task] = []
    var indexTask : Int = 0

    
    @IBAction func addTask(_ sender: Any) {
        
        let addTaskVC = self.storyboard?.instantiateViewController(identifier: "Form") as! FormTableViewController
        self.present(addTaskVC, animated: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }

}






    


