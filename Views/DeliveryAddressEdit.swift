//
//  DeliveryAddressEdit.swift
//  BiometricApp
//
//  Created by Haldox on 13/05/2024.
//

import SwiftUI

struct DeliveryAddressEdit: View {
    
    @State private var deliveryAddress = DeliveryAddressParams()
    @State private var editDeliveryAddress = false
    
    var body: some View {
        NavHandler {
            Form {
                Section  {
                    // Allow editing of form only if this value is true?
                    Toggle(isOn: $editDeliveryAddress, label: {
                        Text("I want to update or specify where my passport should be delivered to.")
                    })
                }
                
                Section {
                    VStack(alignment: .leading) {
                        CustomTextInputField("House Number", text: $deliveryAddress.houseNumber)
                        CustomTextInputField("Street Name", text: $deliveryAddress.streetName)
                        CustomTextInputField("Landmark", text: $deliveryAddress.landmark)
                        CustomTextInputField("Nearest Bus Stop", text: $deliveryAddress.nearestBusStop)
                        CustomTextInputField("LGA", text: $deliveryAddress.lga)
                        CustomTextInputField("City", text: $deliveryAddress.city)
                        CustomTextInputField("State", text: $deliveryAddress.state)
                        CustomTextInputField("Country", text: $deliveryAddress.country)
                        CustomTextInputField("Proxy Full Name", text: $deliveryAddress.proxyFullName)
                        CustomTextInputField("Proxy Phone Number", text: $deliveryAddress.proxyPhoneNumber)
                    }
                }
                
                Section {
                    Button {
                        // Do Action
                    } label: {
                        Text("Save and Continue")
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                            .font(Font.body.weight(.semibold))
                    }
                    .buttonStyle(CustomButtonStyle(colour: Color(hex: 0x0b3121)))
                    
                }
                
                Section {
                    Text("By clicking the save and continue button, you agree that all information provided is truly yours.")
                        .font(.footnote)
                        .multilineTextAlignment(.center)
                }
            }
            .navigationTitle("Edit Delivery Address")
        }
    }
}

#Preview {
    DeliveryAddressEdit()
}

