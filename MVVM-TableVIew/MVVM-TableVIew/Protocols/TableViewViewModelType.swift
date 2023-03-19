//
//  TableViewViewModelType.swift
//  MVVM-TableVIew
//
//  Created by Artem Androsenko on 19.03.2023.
//

import Foundation

protocol TableViewViewModelType {
    func numberOfRows() -> Int 
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType?
}
