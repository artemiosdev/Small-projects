//
//  UserModel.swift
//  Contacts
//
//  Created by Artem Androsenko on 26.02.2023.
//

import Foundation
import UIKit

struct User: Hashable, Decodable {
    var fullname: String
    var imageString: String
    var firstCharacter: String
    var id: Int
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

