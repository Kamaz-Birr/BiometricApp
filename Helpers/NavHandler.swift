//
//  NavHandler.swift
//  IrisScreens
//
//  Created by Haldox on 17/04/2024.
//

import SwiftUI

// Struct to handle iOS 16+ compatibility
struct NavHandler<Content> : View where Content: View {
    @ViewBuilder var content: () -> Content
    
    var body: some View {
        if #available(iOS 16, *) {
            NavigationStack(root: content)
        } else {
            NavigationView(content: content)
        }
    }
}

//#Preview {
//    NavHandler()
//}
