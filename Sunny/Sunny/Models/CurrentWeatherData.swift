//
//  CurrentWeatherData.swift
//  Sunny
//
//  Created by Artem Androsenko on 13.02.2023.
//  Copyright © 2023 Artem Androsenko. All rights reserved.
//

import Foundation

struct CurrentWeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Codable {
    let temp: Double
    let feelslike: Double
    
    // можно изменить название свойства, отличное от оригинального json
    enum CodingKeys: String, CodingKey {
        case temp
        case feelslike = "feels_like"
    }
}

struct Weather: Codable {
    let id: Int
}

