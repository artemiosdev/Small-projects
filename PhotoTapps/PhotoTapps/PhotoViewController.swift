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
        
    }

}
