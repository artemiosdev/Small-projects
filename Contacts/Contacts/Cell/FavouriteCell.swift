//
//  FavouriteCell.swift
//  Contacts
//
//  Created by Artem Androsenko on 26.02.2023.
//

import Foundation
import UIKit

class FavouriteCell: UICollectionViewCell, SelfConfiguringCell {
    static var reuseId: String = "FavouriteCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .blue
    }
    
    func configure(with user: User) {
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
