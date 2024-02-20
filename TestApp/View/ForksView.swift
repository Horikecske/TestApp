//
//  ForksView.swift
//  TestApp
//
//  Created by Nyilas Zsombor on 20/02/2024.
//

import SwiftUI

struct ForksView: View {
    // MARK: - Properties
    let forksCount: Int?
    
    // MARK: - View
    var body: some View {
        HStack(spacing: 4) {
            if let forksCount {
                Text(String(forksCount))
            }
            Image(systemName: "tuningfork")
                .foregroundStyle(.black)
        }
    }
}

// MARK: - Previews
#Preview {
    ForksView(forksCount: 250)
}
