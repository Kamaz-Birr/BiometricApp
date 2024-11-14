//
//  FingerResultView.swift
//  BiometricApp
//
//  Created by Haldox on 13/05/2024.
//

import SwiftUI

struct FingerResultView: View {
    var body: some View {
        VStack {
            Color(hex: 0x0b3121)
                .ignoresSafeArea(.all)
                .overlay(
                    VStack(alignment: .leading) {
                        Text("NIS Mobile")
                            .font(.title2)
                            .foregroundColor(.white)
                    }
                )
            Text("Left Four Fingers")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .padding()
                .padding(.bottom, 30)
            Image("slap1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 800, height: 240)
            HStack {
                VStack {
                  Image("print")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 100)
                    Text("Quality: 76")
                        .font(.footnote)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                }
                .padding(.trailing, 10)
                VStack {
                    Image("print")
                          .resizable()
                          .aspectRatio(contentMode: .fit)
                          .frame(width: 50, height: 100)
                      Text("Quality: 76")
                          .font(.footnote)
                          .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                }
                .padding(.trailing, 10)
                VStack {
                    Image("print")
                          .resizable()
                          .aspectRatio(contentMode: .fit)
                          .frame(width: 50, height: 100)
                      Text("Quality: 76")
                          .font(.footnote)
                          .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                }
                .padding(.trailing, 10)
                VStack {
                    Image("print")
                          .resizable()
                          .aspectRatio(contentMode: .fit)
                          .frame(width: 50, height: 100)
                      Text("Quality: 76")
                          .font(.footnote)
                          .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                }
            }
            HStack {
                Text("Liveness Score: 1.00")
                    .font(.footnote)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Text("Reverse: False")
                    .font(.footnote)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }
            .padding()
            
            Button {
                
            } label: {
                Text("Re-Scan Fingers")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .font(Font.body.weight(.semibold))
            }
            .buttonStyle(CustomButtonStyle(colour: Color(hex: 0x0b3121)))
            .padding(.leading, 20)
            .padding(.trailing, 20)
            .padding(.top, 20)
            
            Button {
                
            } label: {
                Text("Next Scan")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .font(Font.body.weight(.semibold))
            }
            .buttonStyle(CustomButtonStyle(colour: Color(hex: 0x0b3121)))
            .padding(.leading, 20)
            .padding(.trailing, 20)
            .padding(.top, 20)
            .padding(.bottom, 20)
        }
    }
}

#Preview {
    FingerResultView()
}

