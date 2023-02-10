//
//  SecondViewController.swift
//  GCD
//
//  Created by Artem Androsenko on 09.02.2023.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    fileprivate var imageURL: URL?
    fileprivate var image: UIImage? {
        get {
            return imageView.image
        } set {
            activityIndicator.startAnimating()
            activityIndicator.isHidden = true
            imageView.image = newValue
            imageView.sizeToFit()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchImage()
        delay(3) {
            self.loginAlert()
        }
    }
    
    fileprivate func delay(_ delay: Int, closure: @escaping () -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(delay)) {
            closure()
        }
    }
    
    fileprivate func loginAlert () {
        let alertController = UIAlertController(title: "Зарегистированы?", message: "Введите ваш логин и пароль", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        let cancelAction = UIAlertAction(title: "Cancel", style: .default, handler: nil)
        alertController.addAction(okAction)
        alertController.addAction(cancelAction)
        
        alertController.addTextField { username in
            username.placeholder = "Введите логин"
        }
        alertController.addTextField { userPassword in
            userPassword.placeholder = "Введите пароль"
            userPassword.isSecureTextEntry = true
        }
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    fileprivate func fetchImage() {
        imageURL = URL(string: "https://devimages-cdn.apple.com/wwdc-services/articles/images/EF21786B-1543-4CB9-9B70-6C617220EB16/2048.jpeg")
        activityIndicator.isHidden = false
        activityIndicator.startAnimating()
        
        // создадим очередь
        let queue = DispatchQueue.global(qos: .utility)
        queue.async {
            guard let url = self.imageURL, let imageData = try? Data(contentsOf: url) else { return }
            // НО обновление UI должно быть всегда в основном потоке
            DispatchQueue.main.async {
                self.image = UIImage(data: imageData)
            }
        }
        
    }
    
}
