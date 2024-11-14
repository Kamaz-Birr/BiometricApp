//
//  CustomButtonStyle.swift
//  IrisScreens
//
//  Created by Haldox on 17/04/2024.
//

import SwiftUI

struct CustomButtonStyle: ButtonStyle {
    
    let colour: Color
    
    public init(colour: Color = .accentColor) {
        self.colour = colour
    }
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(colour)
            .foregroundStyle(.white)
            .clipShape(.rect(cornerSize: CGSize(width: 20, height: 20)))
            .opacity(configuration.isPressed ? 0.5 : 1)
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}
