//
//  FingerCaptureStartView.swift
//  BiometricApp
//
//  Created by Haldox on 13/05/2024.
//

import SwiftUI

struct FingerCaptureStartView: View {
    @State private var isPresentingFinger = false
    
    var body: some View {
        NavHandler {
            VStack {
                Button {
                   // Go to face
                } label: {
                    Text("Face Capture")
                        .frame(maxWidth: .infinity)
                        .font(Font.body.weight(.semibold))
                }
                .buttonStyle(CustomButtonStyle(colour: Color(hex: 0x0b3121)))
                .padding()
                
                Button {
                    // Go to fingers
                    isPresentingFinger.toggle()
                } label: {
                    Text("Finger Capture")
                        .frame(maxWidth: .infinity)
                        .font(Font.body.weight(.semibold))
                }
                .buttonStyle(CustomButtonStyle(colour: Color(hex: 0x0b3121)))
                .padding()
                .fullScreenCover(isPresented: $isPresentingFinger) {
                    FingerViewControllerWrapper()
                }
            }
        }
    }
}

//#Preview {
//    FingerCaptureStartView()
//}
