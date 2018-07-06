//
//  LoginViewController.swift
//  Cracksoft App
//
//  Created by Samuel Miller on 30/06/2018.
//  Copyright © 2018 Cracksoft. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    @IBAction func doneClicked(_ sender: Any) {
        if (emailTextField.text!) == ""{
            errorLabel.text = "Email Field Blank"
            errorLabel.isHidden = false
            
        }
        else {
            if (passwordTextField.text!) == ""{
                errorLabel.text = "Password Field Blank"
                errorLabel.isHidden = false
            }
            else {
                if ((MyData.sharedInstance.logindetails[emailTextField.text!]) == passwordTextField.text!) {
                    UserDefaults.standard.set(true, forKey: "loggedIn")
                    let name = (MyData.sharedInstance.names[emailTextField.text!])
                    UserDefaults.standard.set(name, forKey: "name")
                    UserDefaults.standard.set(emailTextField.text!, forKey: "email")
                    print(UserDefaults.standard.string(forKey: "name")!)
                } else {
                }
            }
        }
    }

}


extension LoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
