//
//  ViewController.swift
//  UIGestureRecognizer
//
//  Created by Artem Androsenko on 26.11.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func swipeObservers() {
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipes))
        swipeRight.direction = .right
    }
    
    @objc func handleSwipes(gester: UISwipeGestureRecognizer) {
        
    }
}

