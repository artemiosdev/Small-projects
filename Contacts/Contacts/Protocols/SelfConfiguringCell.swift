//
//  SelfConfiguringCell.swift
//  Contacts
//
//  Created by Artem Androsenko on 26.02.2023.
//

import Foundation
import UIKit

protocol SelfConfiguringCell {
    static var reuseId: String { get }
    func configure(with user: User)
}
 
