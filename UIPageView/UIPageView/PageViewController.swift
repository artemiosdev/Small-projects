//
//  PageViewController.swift
//  UIPageView
//
//  Created by Artem Androsenko on 25.11.2022.
//

import UIKit

class PageViewController: UIPageViewController {
    
    // текст для каждой отдельной страницы
    let presentScreenContent = [
        "Первая страница презентации, - рассказывает о сути приложения",
        "Вторая страница презентации, - рассказывает о какой-то фишке приложения",
        "Третья страница презентации, - показывает еще что-то очен интересное в виде картинки и анимации",
        "Последяя страница презентации, - какое-то приятное пожелание пользователю"
        
    ]
    // emoji для каждой отдельной страницы
    let emojiArray = ["😉", "🤓", "🧐", "👍"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let contentViewController = showViewControllerAtIndex(0) {
            // создает массив из view controllers
            setViewControllers([contentViewController], direction: .forward, animated: true, completion: nil)
        }
    }
    
    //method which allows for us to create ViewController
    func showViewControllerAtIndex(_ index: Int) -> ContentViewController? {
        
        guard index >= 0 else { return nil }
        guard index < presentScreenContent.count else { return nil }
        guard let contentViewController = storyboard?.instantiateViewController(identifier: "ContentViewController")
                as? ContentViewController else { return nil }
        contentViewController.presentText = presentScreenContent[index]
        contentViewController.emoji = emojiArray[index]
        contentViewController.currentPage = index
        contentViewController.numberOfPages = presentScreenContent.count
        return contentViewController
    }
}
