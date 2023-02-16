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
        // отобразим число, без знаков после запятой
        return String(format: "%.0f", temperature)
        //        return "\(temperature.rounded())"
    }
    let fellsLikeTemperature: Double
    var fellsLikeTemperatureString: String {
        return String(format: "%.0f", fellsLikeTemperature)
        //        return "\(temperature.rounded())"
    }
    
    let conditionCode: Int
    var systemIconNameString: String {
        switch conditionCode {
        case 200...232: return "cloud.bolt.rain.fill"
        case 300...321: return "cloud.drizzle.fill"
        case 500...531: return "cloud.rain.fill"
        case 600...622: return "cloud.snow.fill"
        case 701...781: return "smoke.fill"
        case 800: return "sun.min.fill"
        case 801...804: return "cloud.fill"
        default: return "nosign"
        }
    }
    
    
    // если что-то пойдет, то данный init вернет nil
    init?(currentWeatherData: CurrentWeatherData) {
        cityName = currentWeatherData.name
        temperature = currentWeatherData.main.temp
        fellsLikeTemperature = currentWeatherData.main.feelslike
        conditionCode = currentWeatherData.weather.first!.id
        
    }
}
