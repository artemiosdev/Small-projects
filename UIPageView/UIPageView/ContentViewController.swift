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
    @IBOutlet weak var closePresentationButton: UIButton!
    var presentText = ""
    var emoji = ""
    // номер текущей страницы UIPageControl
    var currentPage = 0
    // общее кол-во страниц
    var numberOfPages = 0
    var presentationButtonIsHidden = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presentTextLabel.text = presentText
        emojiLabel.text = emoji
        closePresentationButton.isHidden = presentationButtonIsHidden
        pageControl.numberOfPages = numberOfPages
        pageControl.currentPage = currentPage
    }
    @IBAction func closePresentation(_ sender: UIButton) {
        // создадим экземпляр class UserDefaults
        // некий ключ по которому будем закрывать презентацию
        let userDefaults = UserDefaults.standard
        userDefaults.set(true, forKey: "presentationWasViewed")
        // метод закрывающий view controller
        dismiss(animated: true, completion: nil)
    }
    
}
