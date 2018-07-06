//
//  MyData.swift
//  Cracksoft App
//
//  Created by Samuel Miller on 30/06/2018.
//  Copyright © 2018 Cracksoft. All rights reserved.
//


import UIKit

class MyData: NSObject {
    var logindetails = ["a@b.com":"apples123"]
    var names = ["a@b.com":"John"]
    var namedict = UserDefaults.standard.volatileDomain(forName: "names")
    var email = UserDefaults.standard.string(forKey: "email")
    static let sharedInstance = MyData()
}
