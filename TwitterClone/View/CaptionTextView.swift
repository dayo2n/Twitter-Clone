//
//  CaptionTextView.swift
//  TwitterClone
//
//  Created by 문다 on 2023/02/17.
//

import UIKit

class CaptionTextView: UITextView {
    
    // MARK: - Properties
    let placeholderLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 16)
        label.textColor = .darkGray
        label.text = "What's happening?"
        return label
    }()
    
    // MARK: - Lifecycle
    override init(frame: CGRect, textContainer: NSTextContainer?) {
        super.init(frame: frame, textContainer: textContainer)
        
        self.backgroundColor = .white
        self.font = .systemFont(ofSize: 16)
        self.isScrollEnabled = false
        self.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        self.addSubview(placeholderLabel)
        self.placeholderLabel.anchor(top: topAnchor, left: leftAnchor,
                                     paddingTop: 8, paddingLeft: 4)
        
        NotificationCenter.default.addObserver(self, selector: #selector(handleTextInputChange), name: UITextView.textDidChangeNotification, object: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) jas not been implemented")
    }
    
    // MARK: - Selectors
    @objc func handleTextInputChange() {
        placeholderLabel.isHidden = !text.isEmpty
    }
}
