//
//  LaunchView.swift
//  BiometricApp
//
//  Created by Haldox on 13/05/2024.
//

import SwiftUI

// Image is not hashable, thus has no unique id property
// SwiftUI requires an id to know exactly which image is which
struct ImageID: View {
    let id = UUID()
    let screenImage: Image
    let description: Text
    
    var body: some View {
        screenImage
        description
    }
}


struct LaunchView: View {
    private let swipeImages = [ImageID(screenImage: Image("customer-support"), description: Text("CONTACTLESS BIOMETRIC REGISTRATION\n\nThe contactless biometric service enables you to complete your biometric registration without visiting the passport office, using your mobile phone.")), ImageID(screenImage: Image("email"), description: Text("ECOWAS TRAVEL CERTIFICATE\n\nYou can now apply for your ecowas travel  certificate in a matter of minutes and in three simple steps. Click the button below to get started.")), ImageID(screenImage: Image("growth"), description: Text("EMERGENCY TRAVEL CERTIFICATE\n\nYou can now apply for your emergency travel  certificate in a matter of minutes and in three simple steps. Click the button below to get started.")), ImageID(screenImage: Image("authentication"), description: Text("TRACK APPLICATION STATUS\n\nYou can now have first hand information about your appliation process and delivery status right at your finger tips"))]
    
    var body: some View {
        NavHandler {
            VStack {
                TabView {
                    ForEach(swipeImages, id: \.id) { image in
                        VStack {
                            image.screenImage
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                            image.description
                                .font(.system(size: 15))
                                .multilineTextAlignment(.center)
                        }
                        .padding(.bottom, 50)
                    }
                }
                .tabViewStyle(.page)
                .indexViewStyle(.page(backgroundDisplayMode: .always))
                
                Button {
                    // Actions go here
                    print("Pressed!")
                } label: {
                    Text("Get Started")
                        .frame(maxWidth: .infinity)
                        .font(Font.body.weight(.semibold))
                }
                .buttonStyle(CustomButtonStyle(colour: Color(hex: 0x0b3121)))
                .controlSize(.large)
                .padding(15)
                
                NavigationLink(destination: ApplicantLoginView()) {
                    Text("Create Profile")
                        .frame(maxWidth: .infinity)
                        .font(Font.body.weight(.semibold))
                }
                .buttonStyle(CustomButtonStyle(colour: Color(hex: 0x1D8674)))
                .controlSize(.large)
                .padding(15)
//                Button {
//                    // Actions go here
//                    print("Pressed!")
//                } label: {
//                    Text("Create Profile")
//                        .frame(maxWidth: .infinity)
//                }
//                .buttonStyle(CustomButtonStyle())
//                .controlSize(.large)
//                .padding(15)
                
                Text("By using this mobile application, you accept our terms  of service and privacy policy. If you don not agree, please close and delete this application")
                    .font(.footnote)
                    .multilineTextAlignment(.center)
                    .padding(5)
            }
            .padding(30)
        }
    }
}

#Preview {
    LaunchView()
}
