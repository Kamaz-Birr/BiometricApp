//
//  CustomTextInputField.swift
//  IrisScreens
//
//  Created by Haldox on 07/06/2024.
//

import SwiftUI

struct CustomTextInputField: View {
    var title: String
    @Binding var text: String
    var isSecure: Bool

    init(_ title: String, text: Binding<String>, isSecure: Bool = false) {
        self.title = title
        self._text = text
        self.isSecure = isSecure
    }

    var body: some View {
        if isSecure {
            SecureField("", text: $text)
                .customTextFieldStyle(title: title, text: $text)
        } else {
            TextField("", text: $text)
                .customTextFieldStyle(title: title, text: $text)
        }
    }
}

struct CustomTextFieldModifier: ViewModifier {
    var title: String
    @Binding var text: String

    func body(content: Content) -> some View {
        ZStack(alignment: .leading) {
            Text(title)
                .foregroundStyle(Color.gray)
                //.foregroundStyle(text.isEmpty ? Color(.placeholderText) : .accentColor)
                .offset(y: text.isEmpty ? 0 : -25)
                .scaleEffect(text.isEmpty ? 1 : 0.8, anchor: .leading)
                .opacity(text.isEmpty ? 1 : 0)
                .padding(.leading, 10)
            content
                .foregroundStyle(Color.black)
                .padding(10)
                .background(RoundedRectangle(cornerRadius: 8.0).stroke(Color.black, lineWidth: 1))
        }
        //.padding(.top, 15)
        .animation(.default, value: text.isEmpty)
    }
}

extension View {
    func customTextFieldStyle(title: String, text: Binding<String>) -> some View {
        self.modifier(CustomTextFieldModifier(title: title, text: text))
    }
}

extension UIApplication {
    func endEditing(_ force: Bool) {
        guard let windowScene = self.connectedScenes.first as? UIWindowScene else {return}
        windowScene.windows
            .filter{$0.isKeyWindow}
            .first?
            .endEditing(force)
    }
}

#Preview {
    VStack {
        CustomTextInputField("Username", text: .constant(""), isSecure: false)
        CustomTextInputField("Password", text: .constant(""), isSecure: true)
    }
    
}
