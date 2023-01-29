//
//  RegistrationController.swift
//  TwitterClone
//
//  Created by 문다 on 2023/01/29.
//

import UIKit

class RegistrationController: UIViewController {
    // MARK: - Properties
    
    
    // MARK: = Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: - Selectors
    
    // MARK: - Helpers
    func configureUI() {
        view.backgroundColor = .twitterBlue
        navigationController?.navigationBar.isHidden = true
    }
}
