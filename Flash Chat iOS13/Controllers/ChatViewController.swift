//
//  ChatViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import FirebaseAuth
import UIKit

class ChatViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var messageTextfield: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "⚡️FlashChat"
        navigationItem.hidesBackButton = true

    }

    @IBAction func sendPressed(_ sender: UIButton) {
    }

    // on logout button press
    @IBAction func logOutPressed(_ sender: UIBarButtonItem) {

        let firebaseAuth = Auth.auth()
        do {
            try firebaseAuth.signOut()
            
            // go to root view controller, use popToRootView()
            navigationController?.popToRootViewController(animated: true)
        } catch let signOutError as NSError {
            print("Error signing out: %@", signOutError)
        }
    }

}
