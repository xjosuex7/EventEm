//
//  MainViewController.swift
//  TestMultipleStoryboards
//
//  Created by Robert on 10/8/17.
//  Copyright © 2017 cs329. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // initial setup
        self.title = "Login"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func btnShowSignUp(_ sender: Any) {
    
        // Manually instantiate the detail view controller that lives in the Joe storyboard and present it.
        let storyboard = UIStoryboard(name: "SignUp", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SignUpVC") as! SignUpViewController

        let nc = UINavigationController(rootViewController: vc)
        // Show it to the user.
        present(nc, animated: true, completion: nil)
    }
    
}
