//
//  DashboardView.swift
//  BiometricApp
//
//  Created by Haldox on 13/05/2024.
//

import SwiftUI

struct DashboardView: View {
    
    //@State var cardButtonAction: Bool
    private let cards = [
        CustomUICard(cardColour: 0x7BC9FF, cardImage: Image(systemName: "touchid"), cardText: "Contactless \nBiometric \nRegistration", cardButtonText: "Complete"),
        CustomUICard(cardColour: 0xFFCAD4, cardImage: Image(systemName: "light.beacon.min"), cardText: "Emergency \nTravel \nCertificate", cardButtonText: "Apply"),
        CustomUICard(cardColour: 0xFFCAD4, cardImage: Image(systemName: "airplane.circle"), cardText: "ECOWAS \nTravel \nCertificate", cardButtonText: "Apply"),
        CustomUICard(cardColour: 0xC6EBC5, cardImage: Image(systemName: "paperplane.circle"), cardText: "Track \nApplication \nStatus", cardButtonText: "View")
    ]
    
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
                VStack {
                    VStack {
                        Text("Hi, welcome")
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .bold()
                            .padding(.top, 10)
                        Image("nis")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .imageScale(.small)
                            //.frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                            .padding(.top, 10)
                    }
                    VStack {
                        VStack {
                            Text("Features")
                                .font(.title2)
                                .bold()
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.bottom, 5)
                            Text("Choose a feature to get started")
                                .lineLimit(nil)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 20).foregroundColor(.white))
                        
                        LazyVGrid(columns: [GridItem(.adaptive(minimum: 175))]) {
                            ForEach(cards, id: \.id) { card in
                                card
                            }
                        }
                        .padding()
                    }
                }
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    DashboardView()
}

