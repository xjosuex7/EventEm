//
//  DataStore.swift
//  TestMultipleStoryboards
//
//  Created by Liu, Robert J on 10/28/17.
//  Copyright © 2017 Summer Moon Solutions. All rights reserved.
//  Handles operations on the database
//

import Foundation
import Firebase

class DataStore {
    
    static let shared = DataStore()

    private var ref: DatabaseReference!
    
    private init() {
        ref = Database.database().reference()
    }
    
    func getNewUserID() -> Int {
        var newID: Int!
        
        ref.child("users").observeSingleEvent(of: .value, with: { (snapshot) in
            // Get the top-level dictionary.
            let value = snapshot.value as? NSDictionary
            
            if let users = value {
                print(users.count)
            }
        }) { (error) in
            print(error.localizedDescription)
        }
        return 0
    }

    func addUser(user: User) {
        let id = String(self.getNewUserID())
        
        let newUser = [
            "name": user.name,
            "password": user.password,
            "email": user.email
        ]
        
        self.ref.child("users").child("1").setValue(newUser)
    }
    
}
 
