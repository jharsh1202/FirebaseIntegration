//
//  UserDetailsViewController.swift
//  FirebaseIntegration
//
//  Created by Harshit Jain on 29/06/21.
//

import UIKit
import Firebase

class UserDetailsViewController: UIViewController {

    @IBAction func logoutPressed(_ sender: UIBarButtonItem) {
        do {
            try Auth.auth().signOut()
            navigationController?.popViewController(animated: true)
        }
        catch {
            let alert = UIAlertController(title: "Logout Failed", message: "Please try logging out again, also please check your connection!!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Okay", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print("LOADED USERDETAILSVIEW")
        
        navigationItem.hidesBackButton = true
    }
   
}
