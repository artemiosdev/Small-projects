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
    
    // для передачи нашей viewModel дальше
    func viewModelForSelecterRow() -> DetailViewModelType?
    // для получения indexPath для viewModel
    func selectRow(atIndexPath indexPath: IndexPath)
}
