//
//  DetailViewController.swift
//  MVVM-TableVIew
//
//  Created by Artem Androsenko on 19.03.2023.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var viewModel: DetailViewModelType?
    
    // для обновления нашего textLabel
    // метод отрабатывает до появления view на экране
    override func viewWillAppear(_ animated: Bool) {
        guard let viewModel = viewModel else { return }
        self.textLabel.text = viewModel.description
    }
}
