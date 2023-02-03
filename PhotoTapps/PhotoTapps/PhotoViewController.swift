//
//  PhotoViewController.swift
//  PhotoTapps
//
//  Created by Artem Androsenko on 01.02.2023.
//

import UIKit
class PhotoViewController: UIViewController {
    var image: UIImage?
    @IBOutlet weak var photoImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        photoImageView.image = image
    }
    
    @IBAction func shareAction(_ sender: Any) {
        let shareController = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        // отслеживание успешности доставки
        // по умолчанию имеет 4 параметра, но нам нужно лишь одно
        shareController.completionWithItemsHandler = { _, bool, _, _ in
            if bool { print("Успешно") }
        }
        // отобразим наш activity
        present(shareController, animated: true, completion: nil)
    }
}
