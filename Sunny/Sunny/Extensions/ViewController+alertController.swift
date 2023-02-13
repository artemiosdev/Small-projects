//
//  ViewController+alertController.swift
//  Sunny
//
//  Created by Artem Androsenko on 12.02.2023.
//

import UIKit

extension ViewController {
    func presentSearchAlertController(withTitle title: String?, message: String?, style: UIAlertController.Style, completionHandler: @escaping (String) -> Void) {
        let ac = UIAlertController(title: title, message: message, preferredStyle: style)
        ac.addTextField { tf in
            let cities = ["San Francisco", "Moscow", "New York", "Stambul", "Viena"]
            tf.placeholder = cities.randomElement()
        }
        let search = UIAlertAction(title: "Search", style: .default) { action in
            let textField = ac.textFields?.first
            guard let cityName = textField?.text else { return }
            if cityName != "" {
//                self.networkWeatherManager.fetchCurrentWeather(forCity: cityName)
                // для имен городов состоящих из 2 слов, как New York
                let city = cityName.split(separator: " ").joined(separator: "%20")
                completionHandler(city)
            }
        }
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        ac.addAction(search)
        ac.addAction(cancel)
        present(ac, animated: true, completion: nil)
    }
}
