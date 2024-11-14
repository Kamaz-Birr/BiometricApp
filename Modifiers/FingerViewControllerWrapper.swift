//
//  FingerViewControllerWrapper.swift
//  AirSnapFacePro
//
//  Created by Haldox on 27/05/2024.
//

import SwiftUI

struct FingerViewControllerWrapper: UIViewControllerRepresentable {
    typealias UIViewControllerType = FingerCaptureStart
    
    func makeUIViewController(context: Context) -> FingerCaptureStart {
        let viewController = FingerCaptureStart()
        return viewController
    }
    
    func updateUIViewController(_ uiViewController: FingerCaptureStart, context: Context) {
        
    }
    
    class Coordinator: NSObject {
        var parent: FingerViewControllerWrapper
        
        init(_ parent: FingerViewControllerWrapper) {
            self.parent = parent
        }
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
}
