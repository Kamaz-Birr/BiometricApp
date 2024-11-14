//
//  CaptureFingerExtraView.swift
//  BiometricApp
//
//  Created by Haldox on 13/05/2024.
//

import SwiftUI

struct CaptureFingerExtraView: View {
    var body: some View {
        VStack (alignment: .leading){
            Text("NIS Mobile")
                .font(.title2)
                 .foregroundColor(.white)
            HStack{
                VStack {
                    Image("dummy_image")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100)
                        .clipShape(Rectangle())
                }
                .padding(.trailing, 10)
                VStack (alignment: .leading){
                   Text("FAPOHUNDA KOLAPO ABIDEMI")
                        .foregroundColor(.white)
                    Text("1981-08-28T00:00:00 / M")
                        .foregroundColor(.white)
                    Text("170728580529_20244288542")
                        .foregroundColor(.white)
                }
            }
            .padding()
        }
        .background(Image("light_green_shade2").ignoresSafeArea())
        .padding()
        
        Color.white
            .ignoresSafeArea(.all)
            .overlay(
                VStack (alignment: .leading) {
                    Text("Capture Applicant's Fingers")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .padding(.bottom, 20)
                    Text("Please click the camera button below to start your biometric enrollment")
                }
                .padding()
                .padding(.top, 20)
                .padding(.bottom, 150)
                
            )

        VStack {
            Image("camera_image")
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 100, height: 100)
                .clipShape(Rectangle())
        }
    }
}

#Preview {
    CaptureFingerExtraView()
}

