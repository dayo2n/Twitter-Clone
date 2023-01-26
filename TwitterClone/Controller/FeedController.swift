//
//  FeedController.swift
//  TwitterClone
//
//  Created by 문다 on 2023/01/26.
//

import UIKit

class FeedController: UIViewController {
    // MARK: - Properties
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: - Helpers
    func configureUI() {
        view.backgroundColor = .white
        
        let imageView = UIImageView(image: UIImage(named: "twitter"))
        imageView.contentMode = .scaleAspectFit
        navigationItem.titleView = imageView
    }
}
