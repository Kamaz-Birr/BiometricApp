//
//  StringConverter.swift
//  IrisScreens
//
//  Created by Haldox on 27/04/2024.
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
