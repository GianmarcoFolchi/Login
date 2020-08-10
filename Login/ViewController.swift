//
//  ViewController.swift
//  Login
//
//  Created by HS Lab10 on 2/28/20.
//  Copyright © 2020 dsamac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var userNamePassword: [String: String] = ["Dicoan": "waffles","KurbisPA": "gianmarcosucks", "Jonathan": "password", "gianma2002": "jeffers"]
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet var forgotUserNameButton: UIButton!
    @IBOutlet var forgotPassword: UIButton!
    
    @IBAction func forgotUserName(_ sender: Any) {
        performSegue(withIdentifier: "forgotUserNameOrPassword", sender: forgotUserNameButton)
    }
    @IBAction func forgotPassword(_ sender: Any) {
        performSegue(withIdentifier: "forgotUserNameorPassword", sender: forgotPassword)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}

        if sender == forgotUserNameButton {
            segue.destination.navigationItem.title  = "Forgot Username"
        } else if sender == forgotPassword {
            segue.destination.navigationItem.title = "Forgot Password"
         } else {
            for (username1, password1) in userNamePassword {
                if userName.text?.lowercased() == username1.lowercased() && password.text == password1 {
                segue.destination.navigationItem.title = userName.text
            } else {
                navigationItem.title = "Incorrect Password/Username"
            }
        }
    }
}

}
