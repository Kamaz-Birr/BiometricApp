//
//  StringConverter.swift
//  BiometricApp
//
//  Created by Haldox on 13/05/2024.
//

import Foundation

struct StringConverter {
    
    func cleanUpString (originalString: String, specifiedCharacter: String) -> String {
        let range = originalString.range(of: String(specifiedCharacter))
        let substring = originalString[(range?.upperBound...)!]
        let result = String(substring)
        
        return result
    }
}
