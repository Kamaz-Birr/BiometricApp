//
//  Applicant.swift
//  BiometricApp
//
//  Created by Haldox on 13/05/2024.
//

import Foundation

struct Applicant: Codable {
    let aId: Int
    let refId: Int
    let lastName: String
    let firstName: String
    let middleName: String
    let sex: String
    let dob: String
    let email: String
    let oldDocumentNo: String
    let processingCountry: String
    let processingState: String
    let processingOffice: String
    let paymentDate: String
    let appointmentDate: String
    let expiryDate: String
    let applicationType: String
    let passportType: String
    let passportSize: String
    let passportYears: Int
    let address: String
    let streetName: String
    let landMark: String
    let city: String
    let state: String
    let country: String
    let proxyFullName: String
    let proxyPhoneNumber: String
    let nearestBusStop: String
    let lga: String
    let photo: String
}
