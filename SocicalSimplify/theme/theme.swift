//
//  theme.swift
//  SocicalSimplify
//
//  Created by Phi Mai on 26/12/2023.
//

import SwiftUI
struct Space {
    static let xs: CGFloat = 4
    static let sm: CGFloat = 8
    static let md: CGFloat = 12
    static let lg: CGFloat = 16
    static let xl: CGFloat = 24
    static let xxl: CGFloat = 32
}
struct Size {
    static let sm: CGFloat = 8
    static let md: CGFloat = 16
    static let lg: CGFloat = 24
    static let xl: CGFloat = 32
}

struct FontSize {
    static let h1 = Font.system(size: 32, weight: .bold)
    static let h2 = Font.system(size: 24, weight: .bold)
    static let h3 = Font.system(size: 20, weight: .bold)
    static let h4 = Font.system(size: 18, weight: .bold)
    static let body = Font.system(size: 16)
    static let caption = Font.system(size: 14)
    static let note = Font.system(size: 12)
    static let badge = Font.system(size: 8)
}

