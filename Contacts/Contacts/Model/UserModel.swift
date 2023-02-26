//
//  UserModel.swift
//  Contacts
//
//  Created by Artem Androsenko on 26.02.2023.
//

import Foundation
import UIKit

class ContactsModel {
    
    enum CornersDirections: Int, Codable {
        case top, all, bottom, nope
    }
    
    struct User: Hashable, Decodable {
        var fullname: String
        var imageString: String
        var firstCharacter: String
        var id: Int
        var direction: CornersDirections?
        
        func hash(into hasher: inout Hasher) {
            hasher.combine(id)
        }
    }
    
    enum SectionType: Int {
        case profile
        case favoutires
        case contacts
    }
    
    struct UserCollection: Hashable {
        var type: SectionType
        var header: String?
        var users: [User]
        //  некий рандомный id
        var id = UUID()
        
        func hash(into hasher: inout Hasher) {
            hasher.combine(id)
        }
    }
    
    var collections: [UserCollection] {
        return _collection
    }
    
    init() {
        generateCollections()
    }
    
    fileprivate var _collection = [UserCollection]()
    
}

extension ContactsModel {
    
    func generateCollections() {
        let profile = User(fullname: "Artem Androsenko", imageString: "human1", firstCharacter: "A", id: 20)
        let favouriteUsers = Bundle.main.decode([User].self, from: "favouriteUsers.json")
        let contactUsers = Bundle.main.decode([User].self, from: "contactUsers.json")
        
        _collection = [
            UserCollection(type: .profile, header: nil, users: [profile]),
            UserCollection(type: .favoutires, header: nil, users: favouriteUsers)
        ]
        
        var dict: [String: [User]] = [:]
        contactUsers.forEach { (user) in
            if dict[user.firstCharacter] == nil {
                dict[user.firstCharacter] = [user]
            } else {
                if dict[user.firstCharacter]?.first?.firstCharacter == user.firstCharacter {
                    dict[user.firstCharacter]?.append(user)
                }
            }
        }
        
        dict.forEach { (key, users) in
            _collection.append(UserCollection(type: .contacts, header: key, users: users))
        }
    }
}

