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
        "Третья страница презентации, - показывает еще что-то очень интересное в виде картинки и анимации",
        "Последяя страница презентации, - какое-то приятное пожелание пользователю",
        ""
        
    ]
    // emoji для каждой отдельной страницы
    let emojiArray = ["😉", "🤓", "🧐", "👍", ""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource = self
        if let contentViewController = showViewControllerAtIndex(0) {
            // создает массив из view controllers
            setViewControllers([contentViewController], direction: .forward, animated: true, completion: nil)
        }
    }
    
    //method which allows for us to create ViewController
    func showViewControllerAtIndex(_ index: Int) -> ContentViewController? {
        
        guard index >= 0 else { return nil }
        guard index < presentScreenContent.count else {
            // метод закрывающий view controller
            // сработает когда закончатся страницы в нашей презентации
            dismiss(animated: true, completion: nil)
            return nil
            
        }
        guard let contentViewController = storyboard?.instantiateViewController(identifier: "ContentViewController")
                as? ContentViewController else { return nil }
        contentViewController.presentText = presentScreenContent[index]
        contentViewController.emoji = emojiArray[index]
        contentViewController.currentPage = index
        contentViewController.numberOfPages = presentScreenContent.count
        return contentViewController
    }
}

extension PageViewController: UIPageViewControllerDataSource {
    // возврат к странице которая была до текущей (назад)

    func pageViewController(_ pageViewController: UIPageViewController,
                            viewControllerBefore viewController: UIViewController) -> UIViewController? {
        var pageNumber = (viewController as! ContentViewController).currentPage
        pageNumber -= 1
        return showViewControllerAtIndex(pageNumber)
    }
    // переход к след странице после текущей (вперед)
    func pageViewController(_ pageViewController: UIPageViewController,
                            viewControllerAfter viewController: UIViewController) -> UIViewController? {
        var pageNumber = (viewController as! ContentViewController).currentPage
        pageNumber += 1
        return showViewControllerAtIndex(pageNumber)
    }
    
    
}
