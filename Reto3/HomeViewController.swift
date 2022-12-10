//
//  HomeViewController.swift
//  Reto3
//
//  Created by Juan Kuga Palomino on 5/12/22.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    
    let addTaskVC = AddTaskViewController()
    
    
    override func viewDidLoad() {
        //addTaskVC.delegate = self
        super.viewDidLoad()
        addTaskVC.delegate = self
        print("HomeView - viewDidLoad")

        // Do any additional setup after loading the view.
    }

    /**
    @IBAction func openModal(_ sender: Any) {
        let addTaskVC = self.storyboard?.instantiateViewController(identifier: "Form") as! FormTableViewController
        self.present(addTaskVC, animated: true)
    }
     */
   
    
}


extension HomeViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? HomeTableViewCell
        cell?.titlelabel.text = "celdaaa"
        return cell ?? UITableViewCell()
    }
}

/**
extension HomeViewController : NewTaskTableControllerDelegate {
    func addTarea(_view: UIViewController, didcreateTarea tarea: Task) {
        print("HOLAAAAAA")
    }
    
    

    
}
 */
extension HomeViewController : TaskProtocol {
    //print("HomeViewController - TaskProtocol")
    func addTask(name: String) {
        print(name)
        print("Hola mundoooo!")
    }
    
    
}
