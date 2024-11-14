//
//  FaceMatchView.swift
//  BiometricApp
//
//  Created by Haldox on 13/05/2024.
//

import SwiftUI

struct FaceMatchView: View {
    var body: some View {
        ZStack {
            VStack {
                Image("light_green_shade2")
                    .resizable()
                    .ignoresSafeArea()
                    .padding(.bottom, 200)
                Rectangle()
                    .fill(.white)
            }
            
            VStack {
                ZStack {
                    GeometryReader { rectGeom in
                        RoundedRectangle(cornerRadius: 10.0)
                            .foregroundColor(.white)
                            .shadow(radius: 5)
                        Image("dummy_image")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100)
                            .clipShape(Circle())
                            .offset(x: rectGeom.size.width/2.8, y: (rectGeom.size.height/20) - rectGeom.size.height/4)
                        Text("FAPOHUNDA KOLAPO ABIDEMI")
                            .multilineTextAlignment(.center)
                            .padding(.leading, rectGeom.size.width/6)
                            .padding(.top, rectGeom.size.height/2)
                            .padding(.trailing, rectGeom.size.width/8)
                    }
                }
                .frame(width: 360, height: 150)
                VStack {
                    Text("Face Verification")
                        .font(.title2)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("Click the validate applicant face button to start live face verification. Click the reset button to re-capture.")
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                }
                .padding()
                VStack {
                   Text("Live Face")
                        .font(.footnote)
                    Image("dummy_image")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Rectangle())
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    HStack {
                        VStack {
                            Text("Applicant Face")
                                .font(.footnote)
                            Image("dummy_image")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .clipShape(Rectangle())
                                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                        }
                        .padding()
                        VStack {
                            Text("Passport Face")
                                .font(.footnote)
                            Image("dummy_image")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .clipShape(Rectangle())
                                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                        }
                        .padding()
                    }
                }
                .padding()
                VStack {
                    Button {
                        
                    } label: {
                        Text("Validate Applicant Face")
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                            .font(Font.body.weight(.semibold))
                    }
                    .buttonStyle(CustomButtonStyle(colour: Color(hex: 0x0b3121)))
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
                }
            }
        }
    }
}

#Preview {
    FaceMatchView()
}

