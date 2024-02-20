//
//  RepositoryListItemView.swift
//  TestApp
//
//  Created by Nyilas Zsombor on 18/02/2024.
//

import SwiftUI

struct RepositoryListItemView: View {
    // MARK: - Properties
    let repository: Repository
    
    // MARK: - View
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Text(repository.name ?? "-")
                    .font(.headline)
                
                Spacer()
                
                StargazersView(stargazersCount: repository.stargazersCount)
            }.padding(.bottom, 8)
            
            Text(repository.description ?? R.string.localizable.unknownValue())
                .font(.subheadline)
                .padding(.bottom, 4)
            
            if let updatedAt = repository.updatedAt {
                DateLabelView(label: R.string.localizable.updatedAt(), date: updatedAt)
            }
        }
    }
}

// MARK: - Previews
#Preview {
    RepositoryListItemView(repository: Repository.exampleData())
}
