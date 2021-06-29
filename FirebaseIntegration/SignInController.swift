//
//  RegisterUserController.swift
//  FirebaseIntegration
//
//  Created by Harshit Jain on 29/06/21.
//

import UIKit
import Firebase

class SignInController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func registerPressed(_ sender: UIButton) {
    }
    
    @IBAction func loginPressed(_ sender: UIButton) {
        let email = emailTextField.text
        let password = passwordTextField.text
        if let email = email, let password = password {
            Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
                if let authResult = authResult {
                    print(authResult)
                }
                
                if let error = error {
                    print("there's an error \(error)")
                    let alert = UIAlertController(title: "Error Login", message: "Please Enter Valid Credentials", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
                    self?.present(alert, animated: true)
                }

                
            }
        }
    }
    
}

