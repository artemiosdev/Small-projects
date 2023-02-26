//
//  ContactCell.swift
//  Contacts
//
//  Created by Artem Androsenko on 26.02.2023.
//

import Foundation
import UIKit

class ContactCell: UICollectionViewCell, SelfConfiguringCell {
    static var reuseId: String = "ContactCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .yellow
    }
    
    func configure(with user: User) {
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
