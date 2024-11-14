//
//  CustomTextInputField.swift
//  BiometricApp
//
//  Created by Haldox on 13/05/2024.
//

import SwiftUI

struct CustomTextInputField: View {
    
    var title: String
    @Binding var text: String
    
    init(_ title: String, text: Binding<String>) {
        self.title  = title
        self._text = text
    }
    
    var body: some View {
        ZStack(alignment: .leading) {
            Text(title)
                .foregroundStyle(text.isEmpty ? Color(.placeholderText) : .accentColor)
                .offset(y: text.isEmpty ? 0 : -25)
                .scaleEffect(text.isEmpty ? 1 : 0.8, anchor: .leading)
            TextField("", text: $text)
        }
        .padding(.top, 15)
        .animation(.default)
    }
}

//#Preview {
//    CustomTextInputField()
//}

