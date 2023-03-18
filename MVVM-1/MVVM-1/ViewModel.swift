//
//  ViewModel.swift
//  MVVM-1
//
//  Created by Artem Androsenko on 18.03.2023.
//

import Foundation

class ViewModel {
    private var profile = Profile(name: "Bob", secondName: "Odenkirk", age: 60)
    var name: String {
        return profile.name
    }
    var secondName: String {
        return profile.secondName
    }
    var age: String {
        return String(describing: profile.age)
    }
}
