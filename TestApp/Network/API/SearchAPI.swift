//
//  SearchAPI.swift
//  TestApp
//
//  Created by Nyilas Zsombor on 19/02/2024.
//

import Foundation
import Moya

// MARK: - Endpoints
enum SearchAPI {
    case searchRepositories(query: String)
}

// MARK: - Protocol conformance
extension SearchAPI: TargetType {
    var baseURL: URL { URL(string: "https://api.github.com")! }
    var path: String {
        switch self {
        case .searchRepositories:
            return "/search/repositories"
        }
    }
    var method: Moya.Method {
        switch self {
        case .searchRepositories:
            return .get
        }
    }
    var task: Task {
        switch self {
        case let .searchRepositories(query):
            return .requestParameters(parameters: ["q": query], encoding: URLEncoding.queryString)
        }
    }
    var sampleData: Data {
        switch self {
        case .searchRepositories:
            guard let url = Bundle.main.url(forResource: "repositories", withExtension: "json"),
                let data = try? Data(contentsOf: url) else {
                    return Data()
            }
            return data
        }
    }
    var headers: [String: String]? {
        return ["Content-type": "application/vnd.github+json"]
    }
}

