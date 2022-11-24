//
//  ViewController.swift
//  UIContainerView
//
//  Created by Artem Androsenko on 24.11.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageCover: UIImageView!
    @IBOutlet weak var artistLabel: UILabel!
    @IBOutlet weak var songLabel: UILabel!
    var track: Track?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageCover.image = UIImage(named: track?.title ?? "Image cover track")
        artistLabel.text = track?.artist
        songLabel.text = track?.song
    }
}

