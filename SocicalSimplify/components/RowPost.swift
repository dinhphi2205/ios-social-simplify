//
//  RowPost.swift
//  SocicalSimplify
//
//  Created by Phi Mai on 26/12/2023.
//

import SwiftUI

struct RowPost: View {
    let post: Post
    
    var body: some View {
        ZStack{
            Color.white
            VStack {
                var url = URL(string: "https://i.pravatar.cc/40?u=123")!
                RowUser(avatar: url, username: post.username!, timeInterval: post.time_interval!)
                Text(post.title).font(FontSize.h4).multilineTextAlignment(.center)
                Text(post.body).font(FontSize.body).padding(EdgeInsets(top: Space.xs, leading: 0, bottom: 0, trailing: 0)).multilineTextAlignment(.center)
                Divider().padding(.vertical, Space.md)
                HStack {
                    Image(systemName: "text.bubble")
                        .resizable()
                        .foregroundColor(Color.gray)
                        .frame(width: Size.lg, height: Size.lg)
                    Text("View all comments").font(FontSize.body).padding(EdgeInsets(top: 0, leading: Space.xs, bottom: 0, trailing: 0))
                    Spacer()
                }
            }.padding()
        }.cornerRadius(Space.md).padding(.vertical, Space.md).shadow(radius: 5)
    }
}

struct RowPost_Previews: PreviewProvider {
    static var previews: some View {
        RowPost(post: Post(id: 1, user_id: 1, username: "Kenvin Philip", title: "Hellooo", body: "Here is the body", time_interval: "1h"))
    }
}
