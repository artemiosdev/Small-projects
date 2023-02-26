//
//  UIViewController + Extension.swift
//  Contacts
//
//  Created by Artem Androsenko on 26.02.2023.
//

import Foundation
import UIKit

extension UIViewController {
    
    func configure<T: SelfConfiguringCell>(collectionView: UICollectionView, cellType: T.Type, with user: ContactsModel.User, for indexPath: IndexPath) -> T {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellType.reuseId, for: indexPath) as? T else { fatalError( "Unable to dequeue \(cellType)") }
        cell.configure(with: user)
        return cell
    }
}  
