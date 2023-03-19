//
//  DetailViewModel.swift
//  MVVM-TableVIew
//
//  Created by Artem Androsenko on 19.03.2023.
//

import Foundation

class DetailViewModel: DetailViewModelType {
    var  profile: Profile
    
    var description: String {
        return String(describing: "\(profile.name) \(profile.secondName) is \(profile.age) old!")
    }
    
    init(profile: Profile) {
        self.profile = profile
    }
}
