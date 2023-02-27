//
//  UIFont + Extension.swift
//  Contacts
//
//  Created by Artem Androsenko on 27.02.2023.
//

import Foundation
import UIKit

extension UIFont {
    enum RoundedWeight {
        case regular
        case medium
        case semibold
    }
    
    static func sfProRounded(ofSize size: CGFloat, weight: RoundedWeight) -> UIFont? {
        switch weight {
            
        case .regular:
            return UIFont.init(name: "SFProRounded-Regular", size: size)
        case .medium:
            return UIFont.init(name: "SFProRounded-Medium", size: size)
        case .semibold:
            return UIFont.init(name: "SFProRounded-Semibold", size: size)
        }
    }
}

