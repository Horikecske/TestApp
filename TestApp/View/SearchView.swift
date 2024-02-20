//
//  SearchView.swift
//  TestApp
//
//  Created by Nyilas Zsombor on 18/02/2024.
//

import SwiftUI

struct SearchView: View {
    // MARK: - Public properties
    @Binding var searchText: String
    let placeholder: String
    let searchAction: () -> Void
    
    // MARK: - Private properties
    @State private var containtsText: Bool = false
    
    // MARK: - View
    var body: some View {
        HStack(spacing: 8) {
            HStack {
                TextField(placeholder, text: $searchText)
                    .onChange(of: searchText) { _, newValue in
                        withAnimation {
                            containtsText = !newValue.isEmpty
                        }
                    }
                
                if containtsText {
                    Button {
                        searchText.removeAll()
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .foregroundStyle(Color(.systemGray))
                    }
                    .transition(.opacity)
                }
                
            }
            .padding(8)
            .background(Color(.systemGray5))
            .cornerRadius(8)
            
            Button {
                searchAction()
            } label: {
                Text(R.string.localizable.searchViewButtonText())
            }
            .disabled(!containtsText)
        }
    }
}

// MARK: - Previews
#Preview {
    SearchView(searchText: .constant(""), 
               placeholder: R.string.localizable.searchViewPlaceholder(),
               searchAction: {})
}
