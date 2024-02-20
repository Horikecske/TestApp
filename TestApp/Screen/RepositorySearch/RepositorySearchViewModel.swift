//
//  RepositorySearchViewModel.swift
//  TestApp
//
//  Created by Nyilas Zsombor on 19/02/2024.
//

import Combine
import SwiftUI
import Observation

@Observable class RepositorySearchViewModel {
    // MARK: - Properties
    var repositories: [Repository]
    var state: ViewState
    
    private let searchInteractor: SearchInteractorProtocol
    private var cancellables: Set<AnyCancellable>
    
    // MARK: - Initialization
    init() {
        self.repositories = []
        self.state = .empty
        self.searchInteractor = AppContainer.shared.container.resolve(SearchInteractorProtocol.self)!
        self.cancellables = Set<AnyCancellable>()
    }
    
    // MARK: - Public functions
    func fetchRepositories(query: String) {
        state = .loading
        searchInteractor.searchRepositories(query: query)
            .sink(receiveCompletion: { [weak self] completion in
                guard let self,
                      case let .failure(error) = completion else { return }
                self.repositories.removeAll()
                self.state = .error
                print(error)
            }, receiveValue: { [weak self] response in
                guard let self,
                      let items = response.items else {
                    self?.state = .empty
                    return
                }
                if items.isEmpty {
                    self.state = .empty
                } else {
                    self.state = .normal
                    self.repositories.removeAll()
                    self.repositories.append(contentsOf: items)
                }
            }).store(in: &cancellables)
    }
}

// MARK: - View states
extension RepositorySearchViewModel {
    enum ViewState {
        case empty
        case normal
        case loading
        case error
    }
}
