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
    
    
    @IBAction func searchPressed(_ sender: UIButton) {
        self.presentSearchAlertController(withTitle: "Enter city name", message: nil, style: .alert)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let urlString = "https://api.openweathermap.org/data/2.5/weather?q=London&appid=c9ebc7e075494ad023179250421fe8dd&units=metric"
        let url = URL(string: urlString)
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url!) { data, response, error in
            if let data = data {
                let dataString = String(data: data, encoding: .utf8)
                print(dataString!)
            }
        }
        // для запрос осуществился вызываем
        task.resume()
    }
}


