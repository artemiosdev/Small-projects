//
//  MainTabBarController.swift
//  Contacts
//
//  Created by Алексей Пархоменко on 13.06.2020.
//  Copyright © 2020 Алексей Пархоменко. All rights reserved.
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
        
        // разместим нужные нам controllers внизу экрана
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

