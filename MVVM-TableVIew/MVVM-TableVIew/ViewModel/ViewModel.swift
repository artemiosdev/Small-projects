//
//  ViewModel.swift
//  MVVM-TableVIew
//
//  Created by Artem Androsenko on 19.03.2023.
//

import Foundation

class ViewModel: TableViewViewModelType {
    private var selectedIndexPath: IndexPath?
    
    var profiles = [
        Profile(name: "Bob", secondName: "Odenkirk", age: 60),
        Profile(name: "Jonathan", secondName: "Banks", age: 76),
        Profile(name: "Michael", secondName: "Mando", age: 41)
    ]
    func numberOfRows() -> Int {
        return profiles.count
    }
    
    // отдельная viewModel для нашей ячейки
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType? {
        let profile = profiles[indexPath.row]
        return TableViewCellViewModel(profile: profile)
    }
    
    // генерируем новую ViewModel для DetailViewController
    func viewModelForSelecterRow() -> DetailViewModelType? {
        guard let selectedIndexPath = selectedIndexPath else { return nil }
        return DetailViewModel(profile: profiles[selectedIndexPath.row])
    }
    
    func selectRow(atIndexPath indexPath: IndexPath) {
        self.selectedIndexPath = indexPath
    }
}
