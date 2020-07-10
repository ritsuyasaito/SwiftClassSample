//
//  Post.swift
//  ClassSample
//
//  Created by 齋藤律哉 on 2020/07/10.
//  Copyright © 2020 ritsuya. All rights reserved.
//


import UIKit

class Post {
    
    var name: String
    var userImage: UIImage
    var postImage: UIImage
    var text: String?
    
    init(userName: String, userImage: UIImage, image: UIImage) {
        self.name = userName
        self.userImage = userImage
        self.postImage = image
      
    }
    
    
}
