//
//  ContentViewController.swift
//  UIPageView
//
//  Created by Artem Androsenko on 25.11.2022.
//

import UIKit

class ContentViewController: UIViewController {
    @IBOutlet weak var presentTextLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var pageControl: UIPageControl!
    var presentText = ""
    var emoji = ""
    // номер текущей страницы UIPageControl
    var currentPage = 0
    // общее кол-во страниц
    var numberOfPages = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presentTextLabel.text = presentText
        emojiLabel.text = emoji
        pageControl.numberOfPages = numberOfPages
        pageControl.currentPage = currentPage
    }

}
