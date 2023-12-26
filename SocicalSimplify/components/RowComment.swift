//
//  RowComment.swift
//  SocicalSimplify
//
//  Created by Phi Mai on 26/12/2023.
//

import SwiftUI

struct RowComment: View {
    let comment: Comment
    var body: some View {
        
        HStack(alignment: .top) {
            Image(systemName: "person.crop.circle")
                .resizable()
                .frame(width: Size.lg, height: Size.lg).foregroundColor(.green)
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .leading) {
                Text(comment.name).font(FontSize.bodySemibold).padding(EdgeInsets(top: Space.sm, leading: Space.sm, bottom: 0, trailing: Space.sm))
                Text(comment.body).font(FontSize.caption).padding(EdgeInsets(top: 1, leading: Space.sm, bottom: Space.sm, trailing: Space.sm))

            }.padding(EdgeInsets(top: 0, leading: Space.sm, bottom: 0, trailing: 0)).shadow(radius: 3).cornerRadius(5).overlay( /// apply a rounded border
                RoundedRectangle(cornerRadius: 5)
                    .stroke(.gray, lineWidth: 1)
            )
        }
    }
}

struct RowComment_Previews: PreviewProvider {
    static var previews: some View {
        RowComment(comment: Comment(id: 1, post_id: 1, name: "Kenvin Philip", email: "123@yahoo.com", body: "This is a commentThis is a commentThis is a commentThis is a commentThis is a comment"))
    }
}

