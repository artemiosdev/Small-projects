//
//  ContactCell.swift
//  Contacts
//
//  Created by Artem Androsenko on 26.02.2023.
//

import Foundation
import UIKit

class ContactCell: UICollectionViewCell, SelfConfiguringCell {
    
    let imageView = UIImageView()
    let nameLabel = UILabel()
    let phoneImageView = UIImageView()
    let videoImageView = UIImageView()
    let mailImageView = UIImageView()
    
    static var reuseId: String = "ContactCell"
    
    var user: ContactsModel.User?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .systemGroupedBackground
    }
    
    func configure(with user: ContactsModel.User) {
        self.user = user
        
        imageView.image = UIImage(named: user.imageString)
        nameLabel.text = user.fullname
        
        imageView.layer.cornerRadius = 12.5
        imageView.clipsToBounds = true
        
        nameLabel.font = UIFont.sfProRounded(ofSize: 18, weight: .medium)
        phoneImageView.image = #imageLiteral(resourceName: "circle phone")
        videoImageView.image = #imageLiteral(resourceName: "circle video")
        mailImageView.image = #imageLiteral(resourceName: "circle mail")
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let stackView = UIStackView(arrangedSubviews: [phoneImageView, videoImageView, mailImageView])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.spacing = 5
        stackView.distribution = .fillEqually
        
        addSubview(imageView)
        addSubview(nameLabel)
        addSubview(stackView)
        
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            imageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 25),
            imageView.widthAnchor.constraint(equalToConstant: 25)
        ])
        
        NSLayoutConstraint.activate([
            nameLabel.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 16),
            nameLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
    override func layoutSubviews() {
        switch user?.direction {
        case .top:
            roundCorners(corners: [.topLeft, .topRight], radius: 12.0)
        case .all:
            roundCorners(corners: [.topLeft, .topRight, .bottomLeft, .bottomRight], radius: 12.0)
        case .bottom:
            roundCorners(corners: [.bottomLeft, .bottomRight], radius: 12.0)
        default:
            break
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
