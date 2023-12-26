//
//  NavBar.swift
//  SocicalSimplify
//
//  Created by Phi Mai on 26/12/2023.
//

import SwiftUI

struct NavBar: View {
    
    let title: String
    
    var body: some View {
        ZStack{
            Color.blue
            HStack {
                Text(title).font(FontSize.h4).foregroundColor(Color.white)
                Spacer()
                ZStack {
                    Image(systemName: "message.fill")
                        .resizable()
                        .foregroundColor(Color.white)
                        .frame(width: Size.lg, height: Size.lg)
                        .edgesIgnoringSafeArea(.all)
                    ZStack {
                        Circle()
                            .fill(.orange)
                            .frame(width: Space.lg, height: Space.lg)
                        Text("10").font(FontSize.badge)
                            .foregroundStyle(.white)
                        
                    }
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 20, trailing: 0))
                }
            }
            .padding(EdgeInsets(top: Space.sm, leading: Space.sm, bottom: Space.sm, trailing: Space.sm))
            .navigationBarTitle("", displayMode: .inline)
        }
    }
}

struct NavBar_Previews: PreviewProvider {
    static var previews: some View {
        NavBar(title: "Social Simplify")
    }
}
