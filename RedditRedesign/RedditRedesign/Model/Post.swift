//
//  Post.swift
//  RedditRedesign
//
//  Created by Dario Galiani on 16/12/21.
//

import Foundation
import SwiftUI


struct Post {
    
    var id:UUID = UUID()
    
    var subreddit:String
    var subredditImage:Image
    var user:String
    var prizes:[Image]
    var title:String
    var postContent:String
    var votes:Int
    var dateOfPublishing:Date
    
}
