//
//  User.swift
//  ToDoFirebase
//
//  Created by Artem Androsenko on 19.02.2023.
//

import Foundation
import Firebase

struct User {
    let uid: String
    let email: String
    
    init(user: Firebase.User) {
        self.uid = user.uid
        self.email = user.email!
//        self.email = user.email!
    }
}



