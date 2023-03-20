//
//  NetworkManager.swift
//  MVVM-NetworkManager
//
//  Created by Artem Androsenko on 20.03.2023.
//

import Foundation

class NetworkManager: NSObject {
    func fetchMovies(completion: ([String]) -> ()) {
        completion(["Movie1", "Movie2", "Movie3"])
        // и передаем их в view model
    }
}
