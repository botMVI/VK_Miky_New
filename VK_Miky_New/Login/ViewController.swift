//
//  ViewController.swift
//  VK_Miky_New
//
//  Created by Michael Iliouchkin on 24.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonEnter(_ sender: Any) {
        
        guard let login = loginField.text,
              let password = passwordField.text,
              login == "",
              password == "" else {
            show(message: "Error password or login")
            return}
        
        performSegue(withIdentifier: "Login", sender: nil)
    }
}
