//
//  ViewCoordinator.swift
//  SocicalSimplify
//
//  Created by Phi Mai on 26/12/2023.
//

import SwiftUI

struct ViewCoordinator: View {
    @State private var isActive = false
    var body: some View {
        if isActive {
            ContentView()
        }else {
            SplashScreen(isActive: $isActive)
        }
    }
}
