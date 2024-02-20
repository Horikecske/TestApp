//
//  SearchInteractor.swift
//  TestApp
//
//  Created by Nyilas Zsombor on 19/02/2024.
//

import Combine
import CombineMoya
import Foundation
import Moya

protocol SearchInteractorProtocol {
    func searchRepositories(query: String) -> AnyPublisher<RepositoriesResponse, MoyaError>
}

class SearchInteractor: SearchInteractorProtocol {
    // MARK: - Properties
    let provider: MoyaProvider<SearchAPI>
    
    // MARK: - Initialization
    init() {
        self.provider = MoyaProvider<SearchAPI>()
    }
    
    // MARK: - Public functions
    func searchRepositories(query: String) -> AnyPublisher<RepositoriesResponse, MoyaError> {
        return provider.requestPublisher(.searchRepositories(query: query))
            .map(RepositoriesResponse.self)
    }
}
