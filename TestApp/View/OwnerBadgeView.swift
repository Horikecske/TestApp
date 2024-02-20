//
//  OwnerBadgeView.swift
//  TestApp
//
//  Created by Nyilas Zsombor on 20/02/2024.
//

import SwiftUI

struct OwnerBadgeView: View {
    // MARK: - Properties
    let owner: Owner
    
    // MARK: - View
    var body: some View {
        HStack {
            if let avatarURL = owner.avatarURL,
               let url = URL(string: avatarURL) {
                AsyncImage(url: url) { image in
                    image
                        .resizable()
                        .frame(width: 40, height: 40)
                } placeholder: {
                    Image(systemName: "person")
                        .resizable()
                        .frame(width: 40, height: 40)
                }
            } else {
                Image(systemName: "person")
                    .resizable()
                    .frame(width: 40, height: 40)
            }
            
            VStack(alignment: .leading) {
                Text(owner.login ?? R.string.localizable.unknownValue())
                    .font(.headline)
                if let htmlURL = owner.htmlURL,
                   let url = URL(string: htmlURL) {
                    Link(htmlURL, destination: url)
                        .lineLimit(1)
                }
            }
        }
    }
}
// MARK: - Previews
#Preview {
    OwnerBadgeView(owner: Owner.exampleData())
}
