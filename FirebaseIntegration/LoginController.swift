//
//  ViewController.swift
//  FirebaseIntegration
//
//  Created by Harshit Jain on 29/06/21.
//

import UIKit
import Firebase

class LoginController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var dOBTextField: UITextField!
    @IBOutlet weak var notesTextView: UITextView!
    @IBOutlet weak var usernameTextView: UITextField!
    @IBOutlet weak var emailTextView: UITextField!
    @IBOutlet weak var passwordTextView: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func loginTapped(_ sender: UIButton) {
        
        if let username = emailTextView.text, let password = passwordTextView.text {
            print("username \(username) - password \(password)")
            Auth.auth().createUser(withEmail: username, password: password) { authResult, error in
                if let error = error {
                    print("there's an error \(error)")
                    let alert = UIAlertController(title: "Error Login", message: "Please Enter Valid Credentials", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
                    self.present(alert, animated: true)
                }
                if let authResult = authResult {
                    print(authResult)
                    let alert = UIAlertController(title: "Succesful Login", message: "Welcome to our world!!", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "Thanks", style: .default, handler: nil))
                    self.present(alert, animated: true)
                }
            }
        } else {
            print("please enter valid username and password")
        }
        
    }
    
    

}

