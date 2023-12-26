//
//  SimplifyFetcher.swift
//  SocicalSimplify
//
//  Created by Phi Mai on 26/12/2023.
//

import SwiftUI

class SimplifyFetcher: ObservableObject {
    @Published var posts: [Post] = [];
    @Published var comments: [Comment] = [];
    
    
    let urlPostsStrings = "https://gorest.co.in/public/v2/posts";
    let urlCommentStrings = "https://gorest.co.in/public/v2/comments";
    
    enum FetchError: Error {
        case badRequest
        case badJSON
    }
    
    func fetchPosts() async
    throws {
        guard let url = URL(string: urlPostsStrings) else { return }
        let (data, response) = try await URLSession.shared.data(for: URLRequest(url: url))
        guard (response as? HTTPURLResponse)?.statusCode == 200 else { throw FetchError.badRequest}
        
        Task {@MainActor in
            let data = try JSONDecoder().decode([Post].self, from: data)
            posts = data.enumerated().map{(index, item) in
                Post(id: item.id, user_id: item.user_id, username: randomUserName(), title: item.title, body: item.body, time_interval: "\(index + 1)h ago")
            }
        }
    }
    
    func fetchComments() async
    throws {
        guard let url = URL(string: urlCommentStrings) else { return }
        let (data, response) = try await URLSession.shared.data(for: URLRequest(url: url))
        guard (response as? HTTPURLResponse)?.statusCode == 200 else { throw FetchError.badRequest}
        
        Task {@MainActor in
            comments = try JSONDecoder().decode([Comment].self, from: data)
        }
    }

}
