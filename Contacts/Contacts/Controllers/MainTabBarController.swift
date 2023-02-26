//
//  MainTabBarController.swift
//  Contacts
//
//  Created by Artem Androsenko on 25.02.2023.
//

import UIKit

class MainTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let contactsVC = ContactsViewController()
        let recentVC = RecentViewController()
        
        // добавим иконки
        let contactsImage = UIImage(systemName: "person.crop.circle")!
        let recentImage = UIImage(systemName: "clock.fill")!
        
        // разместим нужные нам controllers
        viewControllers = [
            generateNavigationController(rootViewController: contactsVC, title: "Contacts", image: contactsImage),
            generateNavigationController(rootViewController: recentVC, title: "Recent", image: recentImage)
        ]
    }
    
    private func generateNavigationController(rootViewController: UIViewController, title: String, image: UIImage) -> UIViewController {
        let navigationVC = UINavigationController(rootViewController: rootViewController)
        navigationVC.tabBarItem.title = title
        navigationVC.tabBarItem.image = image
        return navigationVC
    }
}
