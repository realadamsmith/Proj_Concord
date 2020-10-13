//
//  SignupViewController.swift
//  hamburger
//
//  Created by Adam Cray Smith on 9/4/20.
//  Copyright © 2020 Scitest. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase

class SignupViewController: UIViewController {

    
    //Need to have a function that saves this content to a DB
    @IBOutlet weak var firstnameTextField: UITextField!
    @IBOutlet weak var lastnameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var logInButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    // Check the fields and validate the data correct, if all good returns nil. Otherwise it returns the error message or NOTHING
    func validateFields() -> String? {
        
        //Check that all fields are filled in
        if firstnameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            lastnameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            emailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            passwordTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
        
            return "Please fill in all fields"
        }
        //Check if the password is secure
        let cleanedPassword = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if Utilities.isPasswordValid(cleanedPassword) == false {
            return "Please make sure your password is at least 8 characters, contains a special character and a number."
        }
        
        return nil
        
        
    }
    
    @IBAction func LogInTapped(_ sender: Any) {

//        // Can redo this whole part with the video to figure out the errors
//        let error = validateFields()
//        if error != nil {
//            showError(error!)
//        }
//            else {
//                Auth.auth().createUser(withEmail: <#T##String#>, password: <#T##String#>, password: String) { (result, err) in
//                    if err != err {
//
//                        self.showError("Error creating user")
//
//                    }
//                    else {
                        
//                        let db.Firestore.firestore
                        
                    }
                }
//            }
//
//
//        }
//        // When the Login button is tapped after putting all 4 fields, we want it to move to the home screen or Welcome screen
//
//
//
//
//    }
    

