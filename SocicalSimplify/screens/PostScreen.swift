//
//  PostScreen.swift
//  SocicalSimplify
//
//  Created by Phi Mai on 26/12/2023.
//

import SwiftUI

struct PostScreen: View {
    @State var loading = true;
    @State var hasError = false;
    let post: Post
    @EnvironmentObject var fetcher: SimplifyFetcher
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                let url = URL(string: "https://i.pravatar.cc/40?u=\(post.username!.replacingOccurrences(of: " ", with: ""))")!
                RowUser(avatar: url, username: post.username!, timeInterval: post.time_interval!)
                Text(post.title).font(FontSize.h4)
                Text(post.body).font(FontSize.body).padding(EdgeInsets(top: Space.xs, leading: 0, bottom: 0, trailing: 0))
                Divider().padding(.vertical, Space.md)
                
                if (loading) {
                    ProgressView()
                } else if (hasError) {
                    Text("Opps, We can't loading comments from this post.Please try again later").font(FontSize.body)
                } else if (fetcher.comments.isEmpty) {
                    Text("No comments found").font(FontSize.body)
                } else {
                    Text("All comments").font(FontSize.body)
                    Divider().padding(.vertical, Space.md)
                    ForEach(fetcher.comments) {comment in
                        RowComment(comment: comment).listRowSeparator(.hidden)
                    }
                }
                Spacer()
            }.padding(.horizontal).task {
                do {
                    loading = true
                    try? await fetcher.fetchComments(postId: post.id)
                    loading = false
                } catch {
                    hasError = true
                    loading = false
                }
            }
            
        }
    }
}

struct PostScreen_Previews: PreviewProvider {
    static var previews: some View {
        PostScreen(post: Post(id: 1, user_id: 1, username: "Kenvin Philip", title: "Hellooo", body: "Here is the body", time_interval: "1h"))
    }
}


