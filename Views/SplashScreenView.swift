//
//  SplashScreenView.swift
//  BiometricApp
//
//  Created by Haldox on 13/05/2024.
//

import SwiftUI

struct SplashScreenView: View {
    var body: some View {
        ZStack {
            VStack {
                Color.white
                    .ignoresSafeArea(.all)
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle.init(tint: .blue))
                    .scaleEffect(2.0, anchor: .center)
            }
            Image("nis_logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(50)
        }
    }
}


#Preview {
    SplashScreenView()
}
