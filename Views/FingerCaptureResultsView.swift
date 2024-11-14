//
//  FingerCaptureResultsView.swift
//  AirSnapFacePro
//
//  Created by Haldox on 27/05/2024.
//

import SwiftUI

struct FingerCaptureResultsView: View {
    var fingerName = [IrisFingerDisplayResults]()
    
    var body: some View {
        List(fingerName) { finger in
            Image(uiImage: finger.fingerImages!)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100.0, height: 100.0)
            Text(finger.fingerNames!)
        }
    }
}

//#Preview {
//    FingerCaptureResultsView()
//}
