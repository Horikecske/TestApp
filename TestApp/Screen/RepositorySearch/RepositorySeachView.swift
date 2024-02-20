//
//  RepositorySearchView.swift
//  TestApp
//
//  Created by Nyilas Zsombor on 14/02/2024.
//

import SwiftUI

struct RepositorySearchView: View {
    // MARK: - Properties
    @State var viewModel = RepositorySearchViewModel()
    @State var searchText: String = ""
    
    // MARK: - View
    var body: some View {
        NavigationStack {
            VStack {
                SearchView(searchText: $searchText,
                           placeholder: R.string.localizable.searchViewPlaceholder(),
                           searchAction: { viewModel.fetchRepositories(query: searchText) })
                .padding()
                
                switch viewModel.state {
                case .normal:
                    listView
                case .empty:
                    emptyView
                case .loading:
                    loadingView
                case .error:
                    errorView
                }
            }
        }
    }
    
    // MARK: - Subviews
    var listView: some View {
        List(viewModel.repositories, id: \.self) { repository in
            NavigationLink(value: repository) {
                RepositoryListItemView(repository: repository)
            }
        }
        .navigationDestination(for: Repository.self, destination: RepositoryDetailsView.init)
        .listStyle(.plain)
        .padding(.bottom, 1)
    }
    
    var emptyView: some View {
        VStack(spacing: 16) {
            Image(systemName: "magnifyingglass.circle")
                .resizable()
                .frame(width: 80, height: 80)
                .foregroundStyle(Color(.systemGray2))
            Text(R.string.localizable.repositoriesViewEmptyText())
        }.frame(maxHeight: .infinity)
    }
    
    var loadingView: some View {
        ProgressView()
            .frame(maxHeight: .infinity)
    }
    
    var errorView: some View {
        VStack(spacing: 16) {
            Image(systemName: "exclamationmark.circle")
                .resizable()
                .frame(width: 80, height: 80)
                .foregroundStyle(Color(.systemGray2))
            Text(R.string.localizable.repositoriesViewErrorText())
        }.frame(maxHeight: .infinity)
    }
}

// MARK: - Previews
#Preview {
    RepositorySearchView()
}
