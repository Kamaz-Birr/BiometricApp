//
//  AsyncButton.swift
//  IrisScreens
//
//  Created by Haldox on 26/04/2024.
//

import SwiftUI

struct AsyncButton<Label: View>: View {
    var action: () async -> Void
    @ViewBuilder var label: () -> Label
    @State private var isPerformingTask = false
    
    var body: some View {
        Button(
            action: {
                isPerformingTask  = true
                
                Task {
                    await action()
                    isPerformingTask = false
                }
            },
            label: {
                ZStack {
                    label().opacity(isPerformingTask ? 0 : 1)
                    
                    if isPerformingTask {
                        ProgressView()
                    }
                }
            }
        )
        .buttonStyle(CustomButtonStyle(colour: Color(hex: 0x0b3121)))
        .disabled(isPerformingTask)
    }
}

//#Preview {
//    AsyncButton()
//}
