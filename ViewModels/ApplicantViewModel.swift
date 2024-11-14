//
//  ApplicantViewModel.swift
//  BiometricApp
//
//  Created by Haldox on 13/05/2024.
//

import Foundation

class ApplicantViewModel: ObservableObject {
    
    @Published var applicant: Applicant?
    @Published var errorMessage: String?
    
    private let service = VeriserveDataService()
    
    init() {
    }
    
    func getApplicant(_ applicantID: String, _ refID: String) async throws {
        print("In Applicant Viewmodel")
        let result = try await service.getApplicantData(applicantID, refID)
        
        DispatchQueue.main.async {
            switch result {
            case .success(let success):
                self.applicant = success
            case .failure(let failure):
                print("Error: \(failure.localizedDescription)")
            }
        }
    }
}
