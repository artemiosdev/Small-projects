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
    }
    
    fileprivate func fetchImage() {
        imageURL = URL(string: "https://devimages-cdn.apple.com/wwdc-services/articles/images/EF21786B-1543-4CB9-9B70-6C617220EB16/2048.jpeg")
        activityIndicator.isHidden = false
        activityIndicator.startAnimating()
        guard let url = imageURL, let imageData = try? Data(contentsOf: url) else { return }
        self.image = UIImage(data: imageData)
        
    }
    
}
