//
//  EligibilityCheckView.swift
//  BiometricApp
//
//  Created by Haldox on 13/05/2024.
//

import SwiftUI

struct EligibilityCheckView: View {
    
    @State private var appID = ""
    @State private var refID = ""
    @StateObject var applicantDetails = ApplicantViewModel()
    @State private var dataLoaded = false
    @State private var isPerformingTask = false
    
    @Environment(\.dismiss) var dismiss
    
    var registerISDisabled: Bool {
        appID.isEmpty || refID.isEmpty
    }
    
    var body: some View {
        NavHandler {
            ZStack {
                VStack {
                    Image("light_green_shade2")
                        .resizable()
                        .ignoresSafeArea()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .padding(.bottom, 200)
                    Rectangle()
                        .fill(.white)
                }
                VStack(alignment: .leading) {
                    HStack {
                        Image("nis")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .imageScale(.small)
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                            .padding(.top, 10)
                        Text("Start Biometric Registration")
                            .foregroundColor(.white)
                            .font(.title3)
                    }
                    .padding()
                    VStack(alignment: .leading) {
                        Text("Please input your unique Application ID and Reference ID as printed on your payment receipt to continue.")
                            .lineLimit(nil)
                            .fixedSize(horizontal: false, vertical: true)
                            .frame(maxWidth: .infinity)
                            .padding()
                        
                        Text("Application ID")
                            .padding(.top, 10)
                            .padding(.leading, 30)
                        TextField("Enter your Application ID", text: $appID)
                            .keyboardType(.numberPad)
                            .padding(.leading, 30)
                            .padding(.trailing, 10)
                        
                        Text("Reference ID")
                            .padding(.leading, 30)
                        TextField("Enter your Reference ID", text: $refID)
                            .keyboardType(.numberPad)
                            .padding(.leading, 30)
                            .padding(.trailing, 10)
                            .padding(.bottom, 30)
                        
                        if registerISDisabled {
                            Button {
                                
                            } label: {
                                Text("Retrieve Applicant")
                                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                                    .padding()
                                    .background(.gray)
                                    .clipShape(.rect(cornerSize: CGSize(width: 20, height: 20)))
                            }
                            .disabled(true)
                            .padding()
                        } else {
                            Button {
                                isPerformingTask  = true
                                
                                Task {
                                    try await applicantDetails.getApplicant(appID, refID)
                                    dataLoaded = true
                                    isPerformingTask = false
                                }
                                
                            } label: {
                                Text("Retrieve Applicant")
                                    .frame(maxWidth: .infinity)
                                    .font(Font.body.weight(.semibold))
                                if isPerformingTask {
                                    ProgressView()
                                }
                            }
                            .buttonStyle(CustomButtonStyle(colour: Color(hex: 0x0b3121)))
                            .opacity(isPerformingTask ? 0.5 : 1)
                            .disabled(isPerformingTask)
                            .padding()
                        }
                        
                        NavigationLink(destination: ApplicationDetailsView(applicantDetails: applicantDetails), isActive: $dataLoaded) {
                            EmptyView()
                        }
                        
                        Button {
                            dismiss()
                        } label: {
                            Text("Not Now")
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                                .font(Font.body.weight(.semibold))
                        }
                        .padding(.top, 30)
                    }
                    .background(RoundedRectangle(cornerRadius: 20).foregroundColor(.white))
                    .textFieldStyle(.roundedBorder)
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar {
                        ToolbarItem(placement: .principal) {
                            Text("Eligibility Check")
                                .bold()
                                .font(.title)
                                .foregroundColor(.white)
                        }
                    }
                    //.navigationBarBackButtonHidden(false)
                    //.padding()
                    
                }
            }
        }
    }
}

#Preview {
    EligibilityCheckView()
}

