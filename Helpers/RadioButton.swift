//
//  RadioButton.swift
//  IrisScreens
//
//  Created by Haldox on 17/04/2024.
//

import SwiftUI

struct RadioButton: View {
    @Binding private var isSelected: Bool
    private let label: String
    
    init(isSelected: Binding<Bool>, label: String = "") {
        self._isSelected = isSelected
        self.label = label
    }
    
    var body: some View {
        HStack(alignment: .top, spacing: 10)  {
            circleView
            labelView
        }
        .contentShape(Rectangle())
        .onTapGesture {
            isSelected = true
        }
    }
}

private extension RadioButton {
    @ViewBuilder var labelView: some View {
        if !label.isEmpty {
            Text(label)
                .font(Font.body.weight(.medium))
        }
    }
    
    @ViewBuilder var circleView: some View {
        Circle()
            .fill(innerCircleColor) // Inner circle color
            .padding(4)
            .overlay(Circle().stroke(outlineColor, lineWidth: 2))
            .frame(width: 20, height: 20)
    }
}

private extension RadioButton {
    var innerCircleColor: Color {
        return isSelected ? Color.blue : Color.clear
    }
    
    var outlineColor: Color {
        return isSelected ? Color.blue : Color.gray
    }
}

extension RadioButton {
    
    // To support multiple options
    init<V: Hashable>(tag: V, selection: Binding<V?>, label: String = "") {
        self._isSelected = Binding(get: {
            selection.wrappedValue == tag
        }, set: { _ in
            selection.wrappedValue = tag
        })
        self.label = label
    }
}

#Preview {
    RadioButton(isSelected: .constant(true), label: "Selected")
}
