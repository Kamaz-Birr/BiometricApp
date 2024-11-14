//
//  ApplicationDetailsView.swift
//  BiometricApp
//
//  Created by Haldox on 13/05/2024.
//

import SwiftUI

struct ApplicationDetailsView: View {
    @State var applicantDetails: ApplicantViewModel
    
    var body: some View {
        NavHandler {
            VStack {
                VStack(alignment: .leading) {
                    Text("NIS Mobile")
                        .font(.title2)
                         .foregroundColor(.white)
                    HStack{
                        VStack {
                            let cleanString = StringConverter().cleanUpString(originalString: "\(applicantDetails.applicant!.photo)", specifiedCharacter: ",")
                            if let imageData = Data(base64Encoded: cleanString) {
                                if let image = UIImage(data: imageData) {
                                    Image(uiImage: image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 100)
                                        .clipShape(Rectangle())
                                }
                            } else {
                                Image("dummy_image")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100)
                                    .clipShape(Rectangle())
                            }
                        }
                        .padding(.trailing, 10)
                        VStack (alignment: .leading){
                            Text("\(applicantDetails.applicant!.firstName) \(applicantDetails.applicant!.middleName) \(applicantDetails.applicant!.lastName)")
                                .foregroundColor(.white)
                            Text("\(applicantDetails.applicant!.dob) / \(applicantDetails.applicant!.sex)")
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
                        Text("Application Details")
                            .font(.title2)
                            .padding(.bottom, 10)
                        Text("The following details are the information provided when you applied for a passport online.")
                    }
                    
                    Section("Application Information") {
                        Label("Name", systemImage: "calendar")
                            .labelStyle(.iconOnly)
                            .imageScale(.large)
                            .foregroundStyle(.blue)
                        Text("Application ID")
                            .badge(Text(String("\(applicantDetails.applicant!.aId)")))
                        Text("Reference ID")
                            .badge(Text(String("\(applicantDetails.applicant!.refId)")))
                        Text("Payment Date")
                            .badge(Text("\(applicantDetails.applicant!.paymentDate)"))
                        Text("Payment Expiry Date")
                            .badge(Text("\(applicantDetails.applicant!.expiryDate)"))
                        Text("Appointment Date")
                            .badge(Text("\(applicantDetails.applicant!.appointmentDate)"))
                    }
                    
                    Section("Processing Centre") {
                        Label("Name", systemImage: "pin")
                            .labelStyle(.iconOnly)
                            .imageScale(.large)
                            .foregroundStyle(.blue)
                        Text("Country")
                            .badge(Text("\(applicantDetails.applicant!.processingCountry)"))
                        Text("State")
                            .badge(Text("\(applicantDetails.applicant!.processingState)"))
                        Text("Office")
                            .badge(Text("\(applicantDetails.applicant!.processingOffice)"))
                    }
                    
                    Section("Passport Information") {
                        Label("Name", systemImage: "doc.text.image")
                            .labelStyle(.iconOnly)
                            .imageScale(.large)
                            .foregroundStyle(.blue)
                        Text("Passport Type")
                            .badge(Text("\(applicantDetails.applicant!.passportType)"))
                        Text("Passport Size")
                            .badge(Text("\(applicantDetails.applicant!.passportSize)"))
                        Text("Passport Years")
                            .badge(Text("\(applicantDetails.applicant!.passportYears)"))
                        Text("Application Type")
                            .badge(Text("\(applicantDetails.applicant!.applicationType)"))
                        Text("Old Passport Number")
                            .badge(Text("\(applicantDetails.applicant!.oldDocumentNo)"))
                    }
                    
                    Section("Delivery Address") {
                        Label("Name", systemImage: "house.circle")
                            .labelStyle(.iconOnly)
                            .imageScale(.large)
                            .foregroundStyle(.blue)
                        Text("\(applicantDetails.applicant!.address) \(applicantDetails.applicant!.streetName) \(applicantDetails.applicant!.city) \(applicantDetails.applicant!.state) \(applicantDetails.applicant!.country)")
                        Text("Additional Address Information")
                            .font(.footnote)
                            .textCase(.uppercase)
                        Text("Landmark")
                            .font(.footnote)
                            .badge(Text("\(applicantDetails.applicant!.landMark)"))
                        Text("Nearest Bus stop")
                            .font(.footnote)
                            .badge(Text("\(applicantDetails.applicant!.nearestBusStop)"))
                        Text("LGA")
                            .font(.footnote)
                            .badge(Text("\(applicantDetails.applicant!.lga)"))
                        Text("Proxy Full Name")
                            .font(.footnote)
                            .badge(Text("\(applicantDetails.applicant!.proxyFullName)"))
                        Text("Proxy Phone Number")
                            .font(.footnote)
                            .badge("\(applicantDetails.applicant!.proxyPhoneNumber)")
                        Button {
                            // Link to delivery address edit page
                            
                        } label: {
                            Text("Edit Address")
                        }
                    }
                    
                    VStack {
                        Button {
                            
                        } label: {
                            Text("Proceed to Live Capture")
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                                .font(Font.body.weight(.semibold))
                        }
                        .buttonStyle(CustomButtonStyle(colour: Color(hex: 0x0b3121)))
                    }
                    
                }
            }
        }
    }
}

//#Preview {
//    ApplicationDetailsView(applicantDetails: ApplicantViewModel())
//}
