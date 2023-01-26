//
//  ConversationController.swift
//  TwitterClone
//
//  Created by 문다 on 2023/01/26.
//

import UIKit

class ConversationsController: UITabBarController {
    
    // MARK: - Properties
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: - Helpers
    func configureUI() {
        view.backgroundColor = .white
        navigationItem.title = "Messages"
    }
}
