//
//  ProfileViewController.swift
//  Cracksoft App
//
//  Created by Samuel Miller on 30/06/2018.
//  Copyright © 2018 Cracksoft. All rights reserved.
//

import UIKit

class ProfileViewController: UITableViewController {
    @IBOutlet weak var login: UITableViewCell!
    @IBOutlet weak var signup: UITableViewCell!
    @IBOutlet weak var signout: UITableViewCell!
    
    override func viewWillAppear(_ animated: Bool) {
        let loggedin = UserDefaults.standard.bool(forKey: "loggedIn")
        if loggedin {
            signout.isHidden = false
            signup.isHidden = true
            login.isHidden = true
            self.title = MyData.sharedInstance.namedict[MyData.sharedInstance.email!] as? String
        } else {
            signout.isHidden = true
            signup.isHidden = false
            login.isHidden = false
        }
    }

}
