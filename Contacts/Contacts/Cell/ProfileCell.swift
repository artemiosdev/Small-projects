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
    
    let imageView = UIImageView()
    let nameLabel = UILabel()
    let cardLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .systemBackground
        
        imageView.layer.cornerRadius = 29
        imageView.clipsToBounds = true
        
        nameLabel.font = UIFont.sfProRounded(ofSize: 28, weight: .semibold)
        cardLabel.font = UIFont.sfProRounded(ofSize: 16, weight: .regular)
        cardLabel.alpha = 0.5
        cardLabel.text = "My card"
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        cardLabel.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(imageView)
        addSubview(nameLabel)
        addSubview(cardLabel)
        
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 58),
            imageView.widthAnchor.constraint(equalToConstant: 58)
        ])
        
        NSLayoutConstraint.activate([
            nameLabel.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 16),
            nameLabel.topAnchor.constraint(equalTo: topAnchor),
            nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16)
        ])
        
        NSLayoutConstraint.activate([
            cardLabel.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 16),
            cardLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 3)
        ])
    }
    
    func configure(with user: ContactsModel.User) {
        imageView.image = UIImage(named: user.imageString)
        nameLabel.text = user.fullname
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
