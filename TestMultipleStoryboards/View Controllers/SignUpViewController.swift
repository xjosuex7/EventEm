//
//  SignUpViewController.swift
//  TestMultipleStoryboards
//
//  Created by Liu, Robert J on 10/28/17.
//  Copyright © 2017 Summer Moon Solutions. All rights reserved.
//

import UIKit
import FirebaseDatabase

class SignUpViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var nameTxtField: UITextField!
    @IBOutlet weak var passTxtField: UITextField!
    @IBOutlet weak var confirmTxtField: UITextField!
    @IBOutlet weak var emailTxtField: UITextField!
    var ref: DatabaseReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        ref = Database.database().reference()
        
        nameTxtField.delegate = self
        passTxtField.delegate = self
        confirmTxtField.delegate = self
        emailTxtField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    // Actually signs up based on text fields
    @IBAction func signUpBtn(_ sender: Any) {
        if nameTxtField!.text != "" && passTxtField!.text != "" && confirmTxtField!.text != "" && emailTxtField!.text != ""{
            let newUser = User(name: nameTxtField!.text!, password: passTxtField!.text!, email: emailTxtField!.text!)
            
            DataStore.shared.addUser(user: newUser)
            
            // returns upon successful user creation
            self.dismiss(animated: true, completion: nil)
        }
        
    }

}
