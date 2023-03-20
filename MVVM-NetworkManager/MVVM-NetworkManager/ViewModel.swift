//
//  ViewModel.swift
//  MVVM-NetworkManager
//
//  Created by Artem Androsenko on 20.03.2023.
//

import Foundation

class ViewModel: NSObject {
    @IBOutlet weak var networkManager: NetworkManager!
    private var movies: [String]?
    
    // получаем movies и помещает их в массив movies
    func fetchMoview(completion: @escaping() -> ()) {
        networkManager.fetchMovies { [weak self] movies in
            self?.movies = movies
            // будем еще далее вызывать этот метод
            // в view controller
            completion()
        }
    }
    
    func numberOfRowsInSection() -> Int {
        return movies?.count ?? 0
    }
    
    func titleForCell(atIndexPath indexPath: IndexPath) -> String {
        guard let movies = movies else { return "" }
        return movies[indexPath.row]

    }
}
