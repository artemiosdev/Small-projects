//
//  NetworkWeatherManager.swift
//  Sunny
//
//  Created by Artem Androsenko on 13.02.2023.
//  Copyright © 2023 Artem Androsenko. All rights reserved.
//

import Foundation

struct NetworkWeatherManager {
    func fetchCurrentWeather(forCity city: String) {
        let urlString = "https://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=\(apiKey)&units=metric"
        guard let url = URL(string: urlString) else { return }
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url) { data, response, error in
            if let data = data {
                let dataString = String(data: data, encoding: .utf8)
                print(dataString!)
            }
        }
        // чтобы запрос осуществился вызываем
        task.resume()
    }
}
