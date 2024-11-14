//
//  CustomUICard.swift
//  BiometricApp
//
//  Created by Haldox on 13/05/2024.
//

import SwiftUI

struct CustomUICard: View {
    
    let id = UUID()
    let cardColour: UInt
    let cardImage: Image
    let cardText: String
    //let cardButton: UIButton
    let cardButtonText: String
    @State var cardButtonAction: Bool = false
     
    var body: some View {
        ZStack {
            RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                .fill(Color(hex: cardColour))
                .frame(width: 150, height: 200)
                //.shadow(radius: 5)
            VStack {
                cardImage
                    .imageScale(.large)
                    .font(.system(size: 35))
                Text(cardText)
                    .multilineTextAlignment(.leading)
                Button {
                    cardButtonAction.toggle()
                } label: {
                    Text(cardButtonText)
                        .frame(maxWidth: 100)
                        .font(Font.body.weight(.semibold))
                }
                .buttonStyle(CustomButtonStyle(colour: Color(hex: 0x0b3121)))
            }
            .padding()
        }
        //.background(Color(hex: cardColour))
        .fullScreenCover(isPresented: $cardButtonAction, content: {
            EligibilityCheckView(applicantDetails: ApplicantViewModel())
        })
    }
}

#Preview {
    
    CustomUICard(cardColour: 0xF7F6BB, cardImage: Image(systemName: "touchid"), cardText: "Contactless \nBiometric \nRegistration", cardButtonText: "Complete")
}
