//
//  ViewController.swift
//  Sunny
//
//  Created by Artem Androsenko on 12.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weatherIconImageView: UIImageView!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var feelsLikeTemperatureLabel: UILabel!
    
    let networkWeatherManager = NetworkWeatherManager()
    
    @IBAction func searchPressed(_ sender: UIButton) {
        self.presentSearchAlertController(withTitle: "Enter city name", message: nil, style: .alert) { city in
            self.networkWeatherManager.fetchCurrentWeather(forCity: city)
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        networkWeatherManager.fetchCurrentWeather(forCity: "Moscow")
    }
}


