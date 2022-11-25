//
//  ViewController.swift
//  UIPageView
//
//  Created by Artem Androsenko on 25.11.2022.
//

import UIKit

class ViewController: UIViewController {
    // срабатывает сразу же после загрузки и отображения view
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        startPresentation()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func startPresentation() {
        // создаем нужный нам для отображения view controller
        if let pageViewPresentation = storyboard?.instantiateViewController(
            withIdentifier: "PageViewController") as? PageViewController {
            // используем инициализатор
            present(pageViewPresentation, animated: true, completion: nil)
        }
    }
}

