//
//  Message.swift
//  DemoMovie
//
//  Created by Kale on 6/10/16.
//  Copyright © 2016 Niveum Labs. All rights reserved.
//

import Foundation

class Message {
    
    var message: String
    var timestamp: String
    var username: String
    var imageFilename: String
    
    init(message: String, timestamp: String, username: String, imageFilename: String) {
        
        self.message = message
        self.timestamp = timestamp
        self.username = username
        self.imageFilename = imageFilename
    }
}
