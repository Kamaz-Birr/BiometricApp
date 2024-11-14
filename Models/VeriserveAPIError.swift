//
//  VeriserveAPIError.swift
//  BiometricApp
//
//  Created by Haldox on 13/05/2024.
//

import Foundation

enum VeriserveAPIError: Error {
    case invalidData
    case jsonParsingFailure
    case requestFailed(description: String)
    case invalidStatusCode(statusCode: Int)
    case unknownError(error: Error)
    case urlConversionFailed(description: String)
    
    var customDescription: String {
        switch self {
        case .invalidData:
            return "Invalid Data"
        case .jsonParsingFailure:
            return "Failed to parse JSON"
        case .requestFailed(let description):
            return "Request Failed: \(description)"
        case .invalidStatusCode(let statusCode):
            return "Invalid status code: \(statusCode)"
        case .unknownError(let error):
            return "An unknown error occured: \(error.localizedDescription)"
        case .urlConversionFailed(let description):
            return "Conversion Failed: \(description)"
        }
    }
}
