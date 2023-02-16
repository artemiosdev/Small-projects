//
//  NetworkWeatherManager.swift
//  Sunny
//
//  Created by Artem Androsenko on 13.02.2023.
//  Copyright © 2023 Artem Androsenko. All rights reserved.
//

import Foundation
import CoreLocation

// предоставление данных для обновления UI
class NetworkWeatherManager {
    
    // создадим дополнительный complitionHandler
    // чтобы по сути подписаться под изменения нашего currentWeather
    var onCompletion: ((CurrentWeather) -> Void)?
    
    // для универсального метода
    enum RequestType {
        case cityName(city: String)
        case coordinate(latitude: CLLocationDegrees, longitude: CLLocationDegrees)
    }
    
    // универсальный метод под 2 вариант, с city и coordinate
    func fetchCurrentWeather(forRequestType requestType: RequestType) {
        var urlString = ""
        switch requestType {
        case .cityName(let city):
            urlString = "https://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=\(apiKey)&units=metric"
        case .coordinate(let latitude, let longitude):
            urlString = "https://api.openweathermap.org/data/2.5/weather?lat=\(latitude)&lon=\(longitude)&appid=\(apiKey)&units=metric"
        }
        performRequest(withURLString: urlString)
    }
    
    // напишем для наших методом func fetchCurrentWeather получение URL
    func performRequest(withURLString urlString: String) {
        guard let url = URL(string: urlString) else { return }
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url) { data, response, error in
            if let data = data {
                if let currentWeather = self.parseJSON(withData: data) {
                    self.onCompletion?(currentWeather)
                }
            }
        }
        // чтобы запрос осуществился вызываем
        task.resume()
    }
    
    func parseJSON(withData data: Data) -> CurrentWeather? {
        // чтобы перевести данные в нужный нам формат
        // создадим декодер
        let decoder = JSONDecoder()
        do {
            let currentWeatherData = try decoder.decode(CurrentWeatherData.self, from: data)
            guard let currentWeather = CurrentWeather(currentWeatherData: currentWeatherData) else { return nil }
            return currentWeather
            
        } catch let error as NSError {
            print(error.localizedDescription)
        }
        return nil
    }
    
}
