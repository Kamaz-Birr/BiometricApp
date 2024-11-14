//
//  BiometricAppApp.swift
//  BiometricApp
//
//  Created by Haldox on 13/05/2024.
//

import SwiftUI

@main
struct BiometricAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
//            ContentView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
            
//            AppEntry()
            
            FingerCaptureStartView()
        }
    }
}
