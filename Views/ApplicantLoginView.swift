//
//  ApplicantLoginView.swift
//  BiometricApp
//
//  Created by Haldox on 13/05/2024.
//

import SwiftUI

struct ApplicantLoginView: View {
    @State private var username = ""
    @State private var password = ""
    //@EnvironmentObject var viewModel: AuthViewModel
    
    var registerISDisabled: Bool {
        username.isEmpty || password.isEmpty
    }
    
    var body: some View {
        NavHandler {
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Please input your usernname annd password or create a profile if you do not have one")
                        //.padding()
                    Text("Username")
                        .padding(.top, 10)
                    TextField("Username", text: $username)
                        .autocorrectionDisabled()
                        .textInputAutocapitalization(.never)
                    
                    Text("Password")
                    SecureField("Password", text: $password)
                        .padding(.bottom, 30)
                    
                    if registerISDisabled {
                        Button {
                            
                        } label: {
                            Text("Log in")
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                                .padding()
                                .background(.gray)
                                .clipShape(.rect(cornerSize: CGSize(width: 20, height: 20)))
                        }
                        .disabled(true)
                    } else {
                        NavigationLink(destination: DashboardView()) {
                            Text("Log in")
                                .frame(maxWidth: .infinity)
                                .font(Font.body.weight(.semibold))
                        }
                        .buttonStyle(CustomButtonStyle(colour: Color(hex: 0x0b3121)))
                    }
//                    Button {
//                        // Action goes here
//                    } label: {
//                        Text("Log in")
//                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
//                    }
//                    .buttonStyle(CustomButtonStyle())
                    
                    Link("Forgot password?", destination: URL(string: "https://www.apple.com")!)
                        //.padding()
                    
                    Text("OR")
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .padding()
                    
                    Button {
                        // Action goes here
//                        Task  {
//                            try await viewModel.signIn(withUsername: username, password: password)
//                        }
                    } label: {
                        Text("Create Profile")
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                            .font(Font.body.weight(.semibold))
                    }
                    .buttonStyle(CustomButtonStyle(colour: Color(hex: 0x1D8674)))
                }
                .padding()
            }
            .textFieldStyle(.roundedBorder)
            .navigationTitle("Applicant Log In")
            .padding()
        }
    }
}


#Preview {
    ApplicantLoginView()
}

