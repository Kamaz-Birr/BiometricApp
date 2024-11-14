//
//  DateView.swift
//  IrisScreens
//
//  Created by Haldox on 07/06/2024.
//

import SwiftUI

struct DateView: View {
    private var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .full
        formatter.timeStyle = .none
        return formatter
    }
    
    private var currentDate: String {
        dateFormatter.string(from: Date())
    }
    
    var body: some View {
        VStack {
            Text(currentDate)
                .font(.subheadline)
                
        }
    }
}

#Preview {
    DateView()
}
