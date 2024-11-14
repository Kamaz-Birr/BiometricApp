//
//  VeriserveDataService.swift
//  BiometricApp
//
//  Created by Haldox on 13/05/2024.
//

import Foundation

class VeriserveDataService {
    
    func getApplicantData(_ applicantID: String, _ refID: String) async throws -> Result<Applicant, VeriserveAPIError> {
        let urlString = "https://veriserve.com.ng:57001/api/appointment-service/appointment/get-appointment-record?AId=\(applicantID)&RefId=\(refID)"
        guard let url = URL(string: urlString) else { return .failure(.urlConversionFailed(description: "Failed to convert URL string to URL object")) }
        
        do {
            let (data, response) = try await URLSession.shared.data(from: url)
            print("DEBUG: \(response)")
            let applicantInfo = try JSONDecoder().decode(Applicant.self, from: data)
            print("DEBUG: \(applicantInfo)")
            return .success(applicantInfo)
        } catch {
            print("DEBUG: Error \(error.localizedDescription)")
            return .failure(.requestFailed(description: "Request Failed"))
        }
    }
}
