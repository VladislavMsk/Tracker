//
//  ViewController.swift
//  Tracker
//
//  Created by Vladislav Tudos on 03.07.2024.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let TrackerViewController = TrackerViewController()
        TrackerViewController.tabBarItem = UITabBarItem(title: "Трекеры", image: UIImage(named: "Bublic"), tag: 0)
        
        let StaticViewController = StaticViewController()
        StaticViewController.tabBarItem = UITabBarItem(title: "Статистика", image: UIImage(named: "Rabbit"), tag: 1)
        
        viewControllers = [TrackerViewController, StaticViewController]

        // Кастомизация таб-бара
        tabBar.tintColor = .ypBlue // Цвет выбранного таба
        tabBar.barTintColor = .white // Цвет фона таб-бара
        tabBar.isTranslucent = true // Полная непрозрачность
    }
}

