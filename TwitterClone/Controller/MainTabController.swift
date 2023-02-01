//
//  MainTabController.swift
//  TwitterClone
//
//  Created by 문다 on 2022/08/01.
//

import UIKit
import Firebase

class MainTabController: UITabBarController {
    
    // MARK: - Properties
    let actionButton: UIButton = {
        let button = UIButton(type: .system)
        button.tintColor = .white
        button.backgroundColor = .twitterBlue
        button.setImage(UIImage(systemName: "plus"), for: .normal)
        button.addTarget(self, action: #selector(actionButtonTapped), for: .touchUpInside)
        return button
    }()
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .twitterBlue
        authenticateUserAndConfigureUI()
    }
    
    // MARK: - API
    func authenticateUserAndConfigureUI() {
        if let currentUser = Auth.auth().currentUser {
            // 로그인한 유저가 있는 상태
            configureUI()
            configureViewContoller()
        } else {
            // 로그인이 필요한 상태
            DispatchQueue.main.async {
                let nav = UINavigationController(rootViewController: LoginController())
                nav.modalPresentationStyle = .fullScreen
                self.present(nav, animated: true, completion: nil)
            }
        }
    }
    
    func logout() {
        do {
            try Auth.auth().signOut()
        } catch let error {
            print("DEBUG: Failed to sign out with error \(error.localizedDescription)")
        }
    }
    
    // MARK: - Selectors
    @objc func actionButtonTapped() {
        print("button tapped")
    }
    
    // MARK: - Helpers
    
    func configureUI() {
        view.addSubview(actionButton)
//        actionButton.translatesAutoresizingMaskIntoConstraints = false
//        actionButton.heightAnchor.constraint(equalToConstant: 56).isActive = true
//        actionButton.widthAnchor.constraint(equalToConstant: 56).isActive = true
//        actionButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -64).isActive = true
//        actionButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16).isActive = true
//        actionButton.layer.cornerRadius = 56 / 2
        actionButton.anchor(bottom: view.safeAreaLayoutGuide.bottomAnchor, right: view.rightAnchor, paddingBottom: -64, paddingRight: -16, width: 56, height: 56)
        actionButton.layer.cornerRadius = 56 / 2
    }
    
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
