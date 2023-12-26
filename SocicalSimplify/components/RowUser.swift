//
//  RowUser.swift
//  SocicalSimplify
//
//  Created by Phi Mai on 26/12/2023.
//

import SwiftUI

struct RowUser: View {
    let avatar: URL
    let username: String
    let timeInterval: String
    var body: some View {
        VStack{
            HStack {
                AsyncImage(url: avatar) { phase in
                    if let image = phase.image {
                        image
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(20)
                            .shadow(radius: 5)
                    }  else if phase.error != nil  {
                    } else {
                        ProgressView()
                    }
                }.frame(height: 40)
                Text(username).font(FontSize.bodySemibold).lineLimit(1).padding(EdgeInsets(top: 0, leading: Space.sm, bottom: 0, trailing: 0))
                Spacer()
                Text(timeInterval).font(FontSize.caption).lineLimit(1)
            }
            Divider()
        }
    }
}

//struct RowUser_Previews: PreviewProvider {
//    static var previews: some View {
//        RowUser(imageAvatar: URL(string: "https://media.istockphoto.com/id/1300845620/vector/user-icon-flat-isolated-on-white-background-user-symbol-vector-illustration.jpg?s=612x612&w=0&k=20&c=yBeyba0hUkh14_jgv1OKqIH0CCSWU_4ckRkAoy2p73o=")!, username: "Kenvin Phillip", timeInterval: "1h ago")
//    }
//}
