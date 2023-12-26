//
//  ViewCoordinator.swift
//  SocicalSimplify
//
//  Created by Phi Mai on 26/12/2023.
//

import SwiftUI

struct ViewCoordinator: View {
    @StateObject private var fetcher = SimplifyFetcher()
    @State private var isActive = false
    var body: some View {
        if isActive {
            TimelineView().environmentObject(fetcher)
        }else {
            SplashScreen(isActive: $isActive)
        }
    }
}
