//
//  FeedController.swift
//  TwitterClone
//
//  Created by 문다 on 2023/01/26.
//

import UIKit
import SDWebImage

class FeedController: UIViewController {
    // MARK: - Properties
    
    var user: User? {
        didSet {
            configureLeftBarButton()
        }
    }
    
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
    
    func configureLeftBarButton() {
        guard let user = user else { return }
        
        let profileImageView = UIImageView()
        profileImageView.setDimensions(width: 40, height: 40)
        profileImageView.layer.cornerRadius = 40 / 2
        profileImageView.sd_setImage(with: URL(string: user.profileIamgeUrl), completed: nil)
        profileImageView.layer.masksToBounds = true // imageView를 둥글게
        profileImageView.contentMode = .scaleAspectFill
        profileImageView.clipsToBounds = true
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: profileImageView)
    }
}
