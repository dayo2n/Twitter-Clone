//
//  Constants.swift
//  TwitterClone
//
//  Created by 문다 on 2023/01/31.
//

import Firebase
import FirebaseStorage

let STORAGE_REF = Storage.storage().reference()
let STORAGE_PROFILE_IMAGES = STORAGE_REF.child("profile_images")
let DB_REF = Database.database().reference()
let REF_USERS = DB_REF.child("users")
