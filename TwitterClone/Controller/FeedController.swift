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
    
    // MARKL - Selectors
    // MARK: - Helpers
    func configureUI() {
        view.backgroundColor = .white
        
        let imageView = UIImageView(image: UIImage(named: "twitter"))
        imageView.contentMode = .scaleAspectFit
        let titleView = UIView(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
        imageView.frame = titleView.bounds
        titleView.addSubview(imageView)
        
        self.navigationItem.titleView = titleView
    }
    
    func configureLeftBarButton() {
        guard let user = user else { return }
        
        let profileImageView = UIImageView()
        profileImageView.setDimensions(width: 32, height: 32)
        profileImageView.layer.cornerRadius = 32 / 2
        profileImageView.sd_setImage(with: URL(string: user.profileIamgeUrl), completed: nil)
        profileImageView.layer.masksToBounds = true // imageView를 둥글게
        profileImageView.contentMode = .scaleAspectFill
        profileImageView.clipsToBounds = true

        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: profileImageView)
    }
}
