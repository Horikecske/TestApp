//
//  StargazersView.swift
//  TestApp
//
//  Created by Nyilas Zsombor on 20/02/2024.
//

import SwiftUI

struct StargazersView: View {
    // MARK: - Properties
    let stargazersCount: Int?
    
    // MARK: - View
    var body: some View {
        HStack(spacing: 4) {
            if let stargazersCount {
                Text(String(stargazersCount))
            }
            Image(systemName: "star.fill")
                .foregroundStyle(.yellow)
        }
    }
}

// MARK: - Previews
#Preview {
    StargazersView(stargazersCount: 14900)
}
