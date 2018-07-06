//
//  SignUpViewController.swift
//  Cracksoft App
//
//  Created by Samuel Miller on 30/06/2018.
//  Copyright © 2018 Cracksoft. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confimPasswordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func doneClicked(_ sender: Any) {
        if (nameTextField.text!) == ""{
            errorLabel.text = "Name Field Blank"
            errorLabel.isHidden = false

        }
        else {
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
                    if (confimPasswordTextField.text!) == ""{
                        errorLabel.text = "Confirm Password Field Blank"
                        errorLabel.isHidden = false

                    }
                    else {
                        if ((MyData.sharedInstance.logindetails[emailTextField.text!]) != nil) {
                            errorLabel.text = "Email Already Regesterd"
                            errorLabel.isHidden = false

                        }
                        else{
                            if (passwordTextField.text!) == (confimPasswordTextField.text!) {
                                //Perfect Signup
                                print("done")
                                UserDefaults.standard.set(true, forKey: "loggedIn")
                                UserDefaults.standard.set(nameTextField.text, forKey: "name")
                                UserDefaults.standard.set(emailTextField.text, forKey: "email")
                                UserDefaults.standard.setVolatileDomain([emailTextField.text!:nameTextField.text!], forName: "names")
                            }
                            else{
                                errorLabel.text = "Passwords Don't Match"
                                errorLabel.isHidden = false
                            }
                        }
                    }
                }
            }
        }
    }
    


}



extension SignUpViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
