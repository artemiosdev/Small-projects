//
//  ViewModel.swift
//  MVVM-TableVIew
//
//  Created by Artem Androsenko on 19.03.2023.
//

import Foundation

class ViewModel: TableViewModelType {
    var profiles = [
        Profile(name: "Bob", secondName: "Odenkirk", age: 60),
        Profile(name: "Jonathan", secondName: "Banks", age: 76),
        Profile(name: "Michael", secondName: "Mando", age: 41)
    ]
    var numberOfRows: Int {
        return profiles.count
    }
}
