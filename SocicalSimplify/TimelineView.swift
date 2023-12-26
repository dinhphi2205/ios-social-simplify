//
//  ContentView.swift
//  SocicalSimplify
//
//  Created by Phi Mai on 26/12/2023.
//

import SwiftUI

struct TimelineView: View {
    @State var loading = true;
    @State var hasError = false;
    @EnvironmentObject var fetcher: SimplifyFetcher
    var body: some View {
        VStack {
            NavBar(title: "Social Simplify").frame(height: 50)
            if (loading) {
                ProgressView()
            } else if (hasError) {
                Text("Some error happen! Please try again later!").font(FontSize.body)
            } else {
                List {
                    ForEach(fetcher.posts) { post in
                        RowPost(post: post).listRowSeparator(.hidden)
                    }
                }.listStyle(.plain)
            }
            Spacer()
        }.task {
            do {
                loading = true
                try? await fetcher.fetchPosts()
                loading = false
            } catch {
                hasError = true
                loading = false
            }
            
        }
    }
}

struct TimelineView_Previews: PreviewProvider {
    static var previews: some View {
        TimelineView()
    }
}
