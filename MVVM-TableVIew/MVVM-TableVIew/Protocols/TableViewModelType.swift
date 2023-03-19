//
//  TableViewModelType.swift
//  MVVM-TableVIew
//
//  Created by Artem Androsenko on 19.03.2023.
//

import Foundation

protocol TableViewModelType {
    var numberOfRows: Int { get }
    var profiles: [Profile] { get }
}
