//
//  TableViewCellViewModelType.swift
//  MVVM-TableVIew
//
//  Created by Artem Androsenko on 19.03.2023.
//

import Foundation

protocol TableViewCellViewModelType: AnyObject {
    var fullName: String { get }
    var age: String { get }
}
