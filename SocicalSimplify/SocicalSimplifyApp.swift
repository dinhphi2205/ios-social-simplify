//
//  SocicalSimplifyApp.swift
//  SocicalSimplify
//
//  Created by Phi Mai on 26/12/2023.
//

import SwiftUI

@main
struct SocicalSimplifyApp: App {
    @State private var isActive = false
    var body: some Scene {
        WindowGroup {
            ViewCoordinator()
        }
    }
}
