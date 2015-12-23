//
//  Post.swift
//  myhood
//
//  Created by Chris Augg on 12/23/15.
//  Copyright © 2015 Auggie Doggie iOSware. All rights reserved.
//

import Foundation

class Post {
    
    private var _impagePath: String
    private var _title: String
    private var _postDesc: String
    
    var imagePath: String {
        return _impagePath
    }
    
    var title: String {
        return _title
    }
    
    var postDesc: String {
        return _postDesc
    }
    
    init(imagePath: String, title: String, description: String) {
        self._impagePath = imagePath
        self._title = title
        self._postDesc = description
    }
}