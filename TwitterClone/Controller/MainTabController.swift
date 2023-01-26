//
//  MainTabController.swift
//  TwitterClone
//
//  Created by 문다 on 2022/08/01.
//

import UIKit

class MainTabController: UITabBarController {
    
    // MARK: - Properties
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        configureViewContoller()
    }
    
    // MARK: - Helpers
    func configureViewContoller() {
        let feed = templateNavigationController(
            imageName: "house",
            rootViewController: FeedController())
        let explore = templateNavigationController(
            imageName: "magnifyingglass",
            rootViewController: ExploreController())
        let notifications = templateNavigationController(
            imageName: "heart",
            rootViewController: NotificationsController())
        let conversations = templateNavigationController(
            imageName: "envelope",
            rootViewController: ConversationsController())
        viewControllers = [feed, explore, notifications, conversations]
    }
    
    func templateNavigationController(imageName: String, rootViewController: UIViewController) -> UINavigationController {
        let nav = UINavigationController(rootViewController: rootViewController)
        nav.tabBarItem.image = UIImage(systemName: imageName)
        nav.navigationBar.barTintColor = .white
        return nav
    }
}
