//
//  TimeView.swift
//  IrisScreens
//
//  Created by Haldox on 07/06/2024.
//

import SwiftUI

struct TimeView: View {
    private var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .none
        formatter.timeStyle = .short
        return formatter
    }
    
    private var currentDate: String {
        dateFormatter.string(from: Date())
    }
    
    var body: some View {
        VStack {
            Text(currentDate)
                .font(.title)
                
        }
    }
}

#Preview {
    TimeView()
}
