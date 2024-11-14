//
//  AppEntry.swift
//  BiometricApp
//
//  Created by Haldox on 13/05/2024.
//

import SwiftUI

struct AppEntry: View {
    @State private var showSplash = true

    var body: some View {
        ZStack {
            if showSplash {
                SplashScreenView()
                    .transition(.opacity)
                    .animation(.easeIn(duration: 1.5))
            } else {
                LaunchView()
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                withAnimation {
                    self.showSplash = false
                }
            }
        }
    }
}

#Preview {
    AppEntry()
}
