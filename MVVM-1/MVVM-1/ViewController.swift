//
//  ViewController.swift
//  MVVM-1
//
//  Created by Artem Androsenko on 18.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var secondNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    // добавим пользователя
    var profile: Profile? {
        didSet {
            guard let profile = profile else { return }
            self.nameLabel.text = profile.name
            self.secondNameLabel.text = profile.secondName
            self.ageLabel.text = "\(profile.age)"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        profile = Profile(name: "Bob", secondName: "Odenkirk", age: 60)
    }

}

