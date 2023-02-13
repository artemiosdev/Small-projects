//
//  CurrentWeather.swift
//  Sunny
//
//  Created by Artem Androsenko on 13.02.2023.
//  Copyright © 2023 Artem Androsenko. All rights reserved.
//

import Foundation

struct CurrentWeather {
    let cityName: String
    let temperature: Double
    var temperatureString: String {
        return "\(temperature.rounded())"
    }
    let fellsLikeTemperature: Double
    var fellsLikeTemperatureString: String {
        return "\(temperature.rounded())"
    }
    let conditionCode: Int
    
    
    // если что-то пойдет, то данный init вернет nil
    init?(currentWeatherData: CurrentWeatherData) {
        cityName = currentWeatherData.name
        temperature = currentWeatherData.main.temp
        fellsLikeTemperature = currentWeatherData.main.feelslike
        conditionCode = currentWeatherData.weather.first!.id
        
    }
}
