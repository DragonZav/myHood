//
//  Post.swift
//  myhood
//
//  Created by Chris Augg on 12/23/15.
//  Copyright © 2015 Auggie Doggie iOSware. All rights reserved.
//

import Foundation

class Post {
    
    private var impagePath: String
    private var title: String
    private var postDesc: String
    
    init(imagePath: String, title: String, description: String) {
        self.impagePath = imagePath
        self.title = title
        self.postDesc = description
    }
}