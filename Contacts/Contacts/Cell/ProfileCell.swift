//
//  ProfileCell.swift
//  Contacts
//
//  Created by Artem Androsenko on 26.02.2023.
//

import Foundation
import UIKit

class ProfileCell: UICollectionViewCell, SelfConfiguringCell {
    static var reuseId: String = "ProfileCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .orange
    }
    
    func configure(with user: ContactsModel.User) {
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
