//
//  DetailViewController.swift
//  MVVM-TableVIew
//
//  Created by Artem Androsenko on 19.03.2023.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var textLabel: UILabel!
    var viewModel: DetailViewModelType?
    
    // для обновления нашего textLabel
    // метод отрабатывает до появления view на экране
    override func viewWillAppear(_ animated: Bool) {
        guard let viewModel = viewModel else { return }
        self.textLabel.text = viewModel.description
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel?.age.bind(listener: { [unowned self ] in
            guard let string = $0 else { return }
            self.textLabel.text = string
            
        })
        
        delay(delay: 3) { [unowned self] in
            self.viewModel?.age.value = "some new value"
        }
    }
    
    // отсрочка перед выполнением closure
    func delay(delay: Double, closure: @escaping () -> ()) {
        DispatchQueue.main.asyncAfter(wallDeadline: .now() + delay) {
            closure()
        }
    }
    
}
