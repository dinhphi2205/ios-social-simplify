//
//  Post.swift
//  SocicalSimplify
//
//  Created by Phi Mai on 26/12/2023.
//

import Foundation

struct Post: Codable, Identifiable {
    var id: Int
    var user_id: Int
    var username: String?
    var title: String
    var body: String
    var time_interval: String?
    
    init(id: Int, user_id: Int, username: String, title: String, body: String, time_interval: String) {
        self.id = id;
        self.user_id = user_id;
        self.username = username;
        self.title = title;
        self.body = body;
        self.time_interval = time_interval;
    }
}

struct Comment: Codable, Identifiable {
    var id: Int
    var post_id: Int
    var name: String
    var email: String
    var body: String
}
