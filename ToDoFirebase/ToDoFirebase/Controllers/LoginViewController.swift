//
//  ViewController.swift
//  ToDoFirebase
//
//  Created by Artem Androsenko on 16.02.2023.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var warnLabel: UILabel!
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(kbDidShow), name: UIResponder.keyboardDidShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(kbDidHide), name: UIResponder.keyboardDidHideNotification, object: nil)
        
        
    }
    
    // при появлении клавиатуры
    @objc func kbDidShow(notification: Notification) {
        // получим размер клавиатуры
        guard let userInfo = notification.userInfo else { return }
        let kbFrameSize = (userInfo[UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
        // увеличим размер хранящегося контента в нашем scroll view
        // стандартная ширина и высота + высота клавиатуры
        (self.view as! UIScrollView).contentSize = CGSize(width: self.view.bounds.size.width, height: self.view.bounds.size.height + kbFrameSize.height)
        // настроим прокрутку наш scroll view
        (self.view as! UIScrollView).scrollIndicatorInsets = UIEdgeInsets(top: 0, left: 0, bottom: kbFrameSize.height, right: 0)
    }
    
    // при скрытии клавиатуры
    @objc func kbDidHide() {
        // возвращаем весь контент в исходное положение
        // стандартная ширина и высота
        (self.view as! UIScrollView).contentSize = CGSize(width: self.view.bounds.size.width, height: self.view.bounds.size.height)
    }
    
    @IBAction func loginTapped(_ sender: UIButton) {
    }
    
    
    @IBAction func registerTapped(_ sender: UIButton) {
    }
    
}

