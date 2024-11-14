//
//  SideMenuOptions.swift
//  IrisScreens
//
//  Created by Haldox on 06/06/2024.
//

import Foundation

enum SideMenuOptions: Int, CaseIterable {
    case dashboard
    case passportApplication
    case emergencyTravel
    case ecowasTravel
    case trackApplication
    case about
    
    var title: String {
        switch self {
        case .about: return "About"
        case .dashboard: return "Dashoard"
        case .ecowasTravel: return "Ecowas Travel"
        case .emergencyTravel: return "Emergency Travel"
        case .passportApplication: return "Passport Application"
        case .trackApplication: return "Track Application"
        }
    }
    
    var systemImageName: String {
        switch self {
        case .about: return "questionmark.bubble"
        case .dashboard: return "filemenu.and.cursorarrow"
        case .ecowasTravel: return "airplane.circle"
        case .emergencyTravel: return "light.beacon.max"
        case .passportApplication: return "person"
        case .trackApplication: return "arrow.up.forward.app"
        }
    }
}

extension SideMenuOptions: Identifiable {
    var id: Int {return self.rawValue}
}
