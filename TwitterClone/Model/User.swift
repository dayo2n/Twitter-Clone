//
//  User.swift
//  TwitterClone
//
//  Created by 문다 on 2023/02/01.
//

import Foundation

struct User {
    let fullname: String
    let email: String
    let username: String
    let profileIamgeUrl: String
    let uid: String
    
    init(uid: String, dictionary: [String: AnyObject]) {
        self.uid = uid
        self.fullname = dictionary["fullname"] as? String ?? ""
        self.email = dictionary["email"] as? String ?? ""
        self.username = dictionary["username"] as? String ?? ""
        self.profileIamgeUrl = dictionary["profileImageUrl"] as? String ?? ""
    }
}
