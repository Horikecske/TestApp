//
//  DateLabelView.swift
//  TestApp
//
//  Created by Nyilas Zsombor on 20/02/2024.
//

import SwiftUI

struct DateLabelView: View {
    // MARK: - Properties
    let label: String
    let date: String
    
    // MARK: - View
    var body: some View {
        Text(label + " " + formatDate(iso8601Date: date))
            .font(.footnote)
            .foregroundStyle(Color(.systemGray))
    }
    
    // MARK: - Private functions
    private func formatDate(iso8601Date: String) -> String {
        let inputFormatter = DateFormatter()
        inputFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        let date = inputFormatter.date(from: iso8601Date)
        
        guard let date else { return "" }
        let outputFormatter = DateFormatter()
        outputFormatter.dateFormat = "MMM d, yyyy"
        return outputFormatter.string(from: date)
    }
}

// MARK: - Previews
#Preview {
    DateLabelView(label: R.string.localizable.updatedAt(), date: "2013-01-05T17:58:47Z")
}
