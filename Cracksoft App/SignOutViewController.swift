//
//  SignOutViewController.swift
//  Cracksoft App
//
//  Created by Samuel Miller on 30/06/2018.
//  Copyright © 2018 Cracksoft. All rights reserved.
//

import UIKit

class SignOutViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func SignOutClicked(_ sender: Any) {
        UserDefaults.standard.set(false, forKey: "loggedIn")
        UserDefaults.standard.set("No Logged In", forKey: "name")
        UserDefaults.standard.set("NONE", forKey: "email")

    }
    
    

}
