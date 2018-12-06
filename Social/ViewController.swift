//
//  ViewController.swift
//  Social
//
//  Created by Samantha Wiley on 11/26/18.
//  Copyright © 2018 Samantha Wiley. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        emailField.layer.borderWidth = 1
        emailField.layer.borderColor = UIColor.white.cgColor
        emailField.layer.cornerRadius = 20
        emailField.clipsToBounds = true
        
        passwordField.layer.borderWidth = 1
        passwordField.layer.borderColor = UIColor.white.cgColor
        passwordField.layer.cornerRadius = 20
        passwordField.clipsToBounds = true
        
        signInButton.layer.cornerRadius = 20
        signInButton.clipsToBounds = true
        
       
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func signInPressed(_ sender: Any) {
        if let email = emailField.text, let password = passwordField.text {
            
            Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
                if error != nil {
                    //Create Account
                } else {
                    
                }
            }
        }
    }

}

