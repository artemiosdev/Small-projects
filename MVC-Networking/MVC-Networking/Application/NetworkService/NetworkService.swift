//
//  NetworkService.swift
//  MVC-Networking
//
//  Created by Artem Androsenko on 16.03.2023.
//

import Foundation

// singleton, один объект для работы с сетью
class NetworkService {
    
    private init() {}
    static let shared = NetworkService()
    
    public func getData(url: URL, completion: @escaping (Any) -> ()) {
        // тоже singleton, встроенный
        let session = URLSession.shared
        session.dataTask(with: url) { data, response, error in
            guard let data = data else { return }
            do {
                let json = try JSONSerialization.jsonObject(with: data, options:[])
                print(json)
            } catch {
                print(error.localizedDescription)
            }
        }.resume()
    }
}
