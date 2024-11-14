//
//  CaptureLiveFaceView.swift
//  BiometricApp
//
//  Created by Haldox on 13/05/2024.
//

import SwiftUI

enum camOption {
    case a
    case b
}
enum capOption {
    case a
    case b
}

struct CaptureLiveFaceView: View {
    @State var cameraOption: camOption? = nil
    @State var captureOption: capOption? = nil
    
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
                    Text("Camera Position")
                        .font(.title2)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(10)
                    Text("Select the camera position covenient for you to start the capture.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(10)
                    HStack {
                        VStack (alignment: .leading){
                            RadioButton(tag: .a, selection: $cameraOption, label: "Front Camera")
                            RadioButton(tag: .b, selection: $cameraOption, label: "Back Camera")
                        }
                        .padding(.trailing, 20)
                        VStack (alignment: .leading) {
                            RadioButton(tag: .a, selection: $captureOption, label: "Auto Capture")
                            RadioButton(tag: .b, selection: $captureOption, label: "Manual Capture")
                        }
                    }
                    .padding()
                }
                .background(RoundedRectangle(cornerRadius: 10).foregroundColor(.white).shadow(radius: 5))
                .padding()
                
                VStack {
                   Text("Capture Live Face")
                        .font(.title2)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(10)
                    Text("Click the capture button when you are ready to capture your face.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(10)
                }
                .padding()
                VStack {
                    Button {
                        
                    } label: {
                        Text("Capture Face")
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

//#Preview {
//    CaptureLiveFaceView()
//}
