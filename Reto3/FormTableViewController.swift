//
//  FormTableViewController.swift
//  Reto3
//
//  Created by Geraldo Emilio Sosa Sosa on 4/12/22.
//

import UIKit

protocol NewTaskTableControllerDelegate{
    //func addTask(_ viewController:UIViewController, didCreateTask newTask: Task)
    func addTarea(_view: UIViewController, didcreateTarea tarea: Task)
}

class FormTableViewController: UITableViewController {
    
    @IBOutlet weak var titleTextFueld: UITextField!
    @IBOutlet weak var priorityTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextView!
    var delegate : NewTaskTableControllerDelegate?
    
    @IBAction func closeButtom(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func saveButtom(_ sender: Any) {
        
        var titleField = titleTextFueld.text ?? ""
        var priorityField = priorityTextField.text ?? ""
        var descriptionField = descriptionTextField.text ?? ""
        
        
        titleField       = titleField.trimmingCharacters(in: .whitespacesAndNewlines)
        descriptionField = descriptionField.trimmingCharacters(in: .whitespacesAndNewlines)
        priorityField    = priorityField.trimmingCharacters(in: .whitespacesAndNewlines)
        
        let task = Task(title: titleField , description: descriptionField, priority:priorityField)
        //print("task: ")
        //print(task)
        //delegate?.addTask(self, didCreateTask: task)
        delegate?.addTarea(_view: self, didcreateTarea: task)
        //dismiss(animated: true)
        

        
    }
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleTextFueld.placeholder = "Add title"
        priorityTextField.placeholder = "Add priority"
        descriptionTextField.text = "Add Description"
        
    }

    
    
}
