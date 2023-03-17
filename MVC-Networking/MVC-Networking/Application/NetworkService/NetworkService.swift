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
    // обращаемся по адресу URL, и преобразуем полученные data
    // в json объект, и благодаря completion передаем дальше
    public func getData(url: URL, completion: @escaping (Any) -> ()) {
        // тоже singleton, встроенный
        let session = URLSession.shared
        session.dataTask(with: url) { data, response, error in
            guard let data = data else { return }
            do {
                let json = try JSONSerialization.jsonObject(with: data, options:[])
                // передадим наш json дальше
                // обновление интерфейса в главном потоке
                DispatchQueue.main.async {
                    completion(json)
                }
            } catch {
                print(error.localizedDescription)
            }
        }.resume()
    }
}
