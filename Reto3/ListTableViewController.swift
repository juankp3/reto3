//
//  ListTableViewController.swift
//  Reto3
//
//  Created by Geraldo Emilio Sosa Sosa on 4/12/22.
//

import UIKit

class ListTableViewController: UITableViewController {
    
    /*
    var tasks = [Task(title: "First Task",
                       description: "Description about First Description",
                       priority: "Low"
                       ),
                ]
    */
    
    var arrayTask : [Task] = []
    var indexTask : Int = 0

    @IBAction func titleTextfield(_ sender: UITextField) {
    }
    
    @IBAction func priorityTextField(_ sender: Any) {
    }
    
    @IBAction func addTask(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }

}

extension ListTableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayTask.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "custom", for: indexPath) as? CustomTableViewCell{
            let task = arrayTask[indexPath.row]
            cell.titleCel?.text = task.title
            
            return cell
        }else{
            return UITableViewCell()
        }

    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    
    
}


extension ListTableViewController: NewTaskTableControllerDelegate{
    func NewViewController(_ ViewController: FormTableViewController, didCreateTask newTask: Task) {
        
        arrayTask.append(newTask)
        print("es o no es")
        print(arrayTask)
        tableView.reloadData()
    }
}
    


