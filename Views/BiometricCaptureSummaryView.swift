//
//  BiometricCaptureSummaryView.swift
//  BiometricApp
//
//  Created by Haldox on 13/05/2024.
//

import SwiftUI

struct BiometricCaptureSummaryView: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
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
                .padding(5)
            }
            .background(Image("light_green_shade2").ignoresSafeArea())
            .padding(5)
            
            Form {
                VStack(alignment: .leading) {
                    Text("Biometric Capture Summary")
                        .font(.title2)
                        .padding(.bottom, 10)
                    Text("Review your biometric summary. This information will be used or your application re-issue. Click submit to proceed or click try again to restart.")
                }
                
                Section("Photo Veriication Status") {
                    Text("Applicant Photo Verified")
                        .badge(Text("\(Image(systemName: "checkmark.circle"))").foregroundColor(.green).bold())
                }
                
                Section("Biometric Fingerprint Status") {
                    Text("Left Four Fingers Capture")
                        .badge(Text("\(Image(systemName: "checkmark.circle"))").foregroundColor(.green).bold())
                    Text("Right Four Fingers Capture")
                        .badge(Text("\(Image(systemName: "checkmark.circle"))").foregroundColor(.green).bold())
                    Text("Left Thumb Capture")
                        .badge(Text("\(Image(systemName: "checkmark.circle"))").foregroundColor(.green).bold())
                    Text("Right Thumb Capture")
                        .badge(Text("\(Image(systemName: "checkmark.circle"))").foregroundColor(.green).bold())
                }
                
                Section("Delivery Address Status") {
                    Text("Delivery Address Modified")
                        .badge(Text("\(Image(systemName: "checkmark.circle"))").foregroundColor(.green).bold())
                }
                
                VStack {
                    Button {
                        
                    } label: {
                        Text("Submit")
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                            .font(Font.body.weight(.semibold))
                    }
                    .buttonStyle(CustomButtonStyle(colour: Color(hex: 0x0b3121)))
                }
                
                Section {
                    Text("By clicking the submit button, you agree that all information provided is truly yours.")
                        .font(.footnote)
                        .multilineTextAlignment(.center)
                }
            }
        }
    }
}

//#Preview {
//    BiometricCaptureSummaryView()
//}

