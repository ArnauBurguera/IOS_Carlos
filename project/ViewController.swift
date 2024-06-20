//
//  ViewController.swift
//  project
//
//  Created by Arnau Burguera on 20/6/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    let validCredentials: [String: String] = [
         "Juan": "123",
         "Alba": "234",
         "Arnau": "345",
         "Carlos": "456",
         "Peter": "567",
     ]
    
    @IBAction func loginButtonTap(){
        guard let email = emailTextField.text, let password = passwordTextField.text else {
                   label.text = "Please enter both email and password"
                   return
               }

               if let validPassword = validCredentials[email], validPassword == password {
                   label.text = "Success!"
                   performSegue(withIdentifier: "navigation", sender: nil)
               } else {
                   label.text = "Wrong!"
               }
           }
    
    override func viewDidLoad() {
    
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

