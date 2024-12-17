//
//  Post.swift
//  TechSocialMediaApp
//
//  Created by Wesley Keetch on 11/6/24.
//

import UIKit

struct Post {
    var userID: String
    var username: String?
    var profileImage: UIImage?
    var content: String
    var image: UIImage?
    var likes: Int
    var comments: Int
    var shares: Int
    var timestamp: Date        
}
