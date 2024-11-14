//
//  FingerResultsSummaryView.swift
//  BiometricApp
//
//  Created by Haldox on 13/05/2024.
//

import SwiftUI

struct FingerResultsSummaryView: View {
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
                    Text("Applicant Fingerprints")
                        .font(.title2)
                        .padding(.bottom, 10)
                    Text("Please, make sure these fingerprints belong **only** to the applicant. Click the submit button to continue")
                }
                
                Section("Left Four Fingers") {
                    Image("slap1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 800, height: 240)
                    HStack(alignment: .top) {
                        VStack {
                          Image("print")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50)
                            Text("Quality: 76")
                                .font(.footnote)
                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        }
                        .padding(.trailing, 5)
                        VStack {
                            Image("print")
                                  .resizable()
                                  .aspectRatio(contentMode: .fit)
                                  .frame(width: 50, height: 50)
                              Text("Quality: 76")
                                  .font(.footnote)
                                  .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        }
                        .padding(.trailing, 5)
                        VStack {
                            Image("print")
                                  .resizable()
                                  .aspectRatio(contentMode: .fit)
                                  .frame(width: 50, height: 50)
                              Text("Quality: 76")
                                  .font(.footnote)
                                  .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        }
                        .padding(.trailing, 5)
                        VStack {
                            Image("print")
                                  .resizable()
                                  .aspectRatio(contentMode: .fit)
                                  .frame(width: 50, height: 50)
                              Text("Quality: 76")
                                  .font(.footnote)
                                  .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        }
                    }
                    HStack {
                        Text("Liveness Score: 1.00")
                            .font(.footnote)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            .padding()
                        Text("Reverse: False")
                            .font(.footnote)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    }
                    .padding()
                }
                
                Section("Right Four Fingers") {
                    Image("slap1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 800, height: 240)
                    HStack(alignment: .top) {
                        VStack {
                          Image("print")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50)
                            Text("Quality: 76")
                                .font(.footnote)
                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        }
                        .padding(.trailing, 5)
                        VStack {
                            Image("print")
                                  .resizable()
                                  .aspectRatio(contentMode: .fit)
                                  .frame(width: 50, height: 50)
                              Text("Quality: 76")
                                  .font(.footnote)
                                  .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        }
                        .padding(.trailing, 5)
                        VStack {
                            Image("print")
                                  .resizable()
                                  .aspectRatio(contentMode: .fit)
                                  .frame(width: 50, height: 50)
                              Text("Quality: 76")
                                  .font(.footnote)
                                  .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        }
                        .padding(.trailing, 5)
                        VStack {
                            Image("print")
                                  .resizable()
                                  .aspectRatio(contentMode: .fit)
                                  .frame(width: 50, height: 50)
                              Text("Quality: 76")
                                  .font(.footnote)
                                  .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        }
                    }
                    HStack {
                        Text("Liveness Score: 1.00")
                            .font(.footnote)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            .padding()
                        Text("Reverse: False")
                            .font(.footnote)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    }
                    .padding()
                }
                
                Section("Left Thumb") {
                    Image("thumbShot")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 800, height: 240)
                    VStack {
                        Image("print")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                        Text("Quality: 76")
                            .font(.footnote)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    }
                    HStack {
                        Text("Liveness Score: 1.00")
                            .font(.footnote)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            .padding()
                        Text("Reverse: False")
                            .font(.footnote)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    }
                    .padding()
                }
                
                Section("Right Thumb") {
                    Image("thumbShot")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 800, height: 240)
                    VStack {
                        Image("print")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                        Text("Quality: 76")
                            .font(.footnote)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    }
                    HStack {
                        Text("Liveness Score: 1.00")
                            .font(.footnote)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            .padding()
                        Text("Reverse: False")
                            .font(.footnote)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    }
                    .padding()
                }
            }
        }
    }
}

#Preview {
    FingerResultsSummaryView()
}

