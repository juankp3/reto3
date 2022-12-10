//
//  AddTaskViewController.swift
//  Reto3
//
//  Created by Juan Kuga Palomino on 6/12/22.
//

import UIKit

protocol TaskProtocol {
    func addTask(name:String)
}

class AddTaskViewController: UIViewController {
    var delegate : TaskProtocol?
    
    @IBAction func newTask(_ sender: Any) {
        print("Click en el boton")
        delegate?.addTask(name: "Hola")
        dismiss(animated: true)
        print("cierra modal")
       
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


}
