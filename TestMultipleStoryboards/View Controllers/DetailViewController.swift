//
//  DetailViewController.swift
//  TestMultipleStoryboards
//
//  Created by Robert Seitsinger on 10/8/17.
//  Copyright © 2017 Summer Moon Solutions. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Sign Up"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func btnDismissAction(_ sender: Any) {
        // Dismiss this view controller and go back to the view controller that presented it.
        self.dismiss(animated: true, completion: nil)
    }
}
