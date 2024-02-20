//
//  RepositoryDetailsView.swift
//  TestApp
//
//  Created by Nyilas Zsombor on 20/02/2024.
//

import SwiftUI

struct RepositoryDetailsView: View {
    // MARK: - Properties
    let repository: Repository
    
    // MARK: - View
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(repository.name ?? R.string.localizable.unknownValue())
                    .font(.largeTitle)
                    .minimumScaleFactor(0.2)
                    .lineLimit(1)
                Spacer()
                StargazersView(stargazersCount: repository.stargazersCount)
                ForksView(forksCount: repository.forksCount)
            }.padding(.bottom, 8)
            
            if let description = repository.description {
                Text(description)
                    .font(.callout)
            }
            
            if let htmlURL = repository.htmlURL,
                let url = URL(string: htmlURL) {
                Link(htmlURL, destination: url)
                    .lineLimit(1)
            }
            
            HStack {
                if let updatedAt = repository.updatedAt {
                    DateLabelView(label: R.string.localizable.updatedAt(), date: updatedAt)
                }
                
                Spacer()
                
                if let createdAt = repository.createdAt {
                    DateLabelView(label: R.string.localizable.createdAt(), date: createdAt)
                }
            }
            
            if let owner = repository.owner {
                OwnerBadgeView(owner: owner)
                    .padding(.top, 8)
            }
            
            Spacer()
        }
        .padding()
    }
}

// MARK: - Previews
#Preview {
    RepositoryDetailsView(repository: Repository.exampleData())
}
