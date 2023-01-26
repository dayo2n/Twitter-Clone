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
        let feed = FeedController()
        feed.tabBarItem.image = UIImage(systemName: "house")
        
        let explore = ExploreController()
        explore.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        
        let notifications = NotificationsController()
        notifications.tabBarItem.image = UIImage(systemName: "heart")
        
        let conversations = ConversationsController()
        conversations.tabBarItem.image = UIImage(systemName: "envelope")
        
        viewControllers = [feed, explore, notifications, conversations]
    }
}
